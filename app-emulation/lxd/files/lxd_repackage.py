#!/usr/bin/env python

# This script creates the gentoo lxd tarball which contains the go deps that
# aren't already in go-crypto.
#
# Usage:
# python lxd_repackage.py 2.0.3 2.0.3
#
# I run this in a container but that's not strictly required.  It does
# mangle the ebuild (appends a 'real' SRC_URI at the bottom to bootstrap).
# It tries to restore the original when it's done but script failures can
# put it in a bad state where you still have to fix that manually.

from sys import argv

# e.g. 2.0.0_beta1 is considered 2.0.0.beta1 upstream on github
version = argv[1]
upstream_version = argv[2]
portage_path = argv[3]

import portage
from os import makedirs,path,rename,walk
import time

import shutil
ebuildpath = "%s/app-emulation/lxd/lxd-%s.ebuild" % (portage_path, version)
origebuild = "/tmp/lxd-{}.ebuild".format(version)
shutil.copy(ebuildpath,origebuild)

# replace the custom SRC_URI with the proper upstream one
upstream_line = 'SRC_URI="https://github.com/lxc/lxd/archive/lxd-{}.tar.gz"\n'.format(upstream_version)
foundline = False
with open(ebuildpath,"rt") as ebuildfile:
    for line in ebuildfile.readlines():
        if line == upstream_line:
            foundline = True
            break

if not foundline:
    with open(ebuildpath,"a") as ebuildfile:
        ebuildfile.write(upstream_line)

# Run through the unpack stage and stop    
conf = portage.config()
portage.doebuild(ebuildpath,"clean",settings=conf,tree="porttree")
portage.doebuild(ebuildpath,"manifest",settings=conf,tree="porttree")
print('completed manifest')
portage.doebuild(ebuildpath,"unpack",settings=conf,tree="porttree")
print('completed unpack')
# unpack is racy on the first download
time.sleep(2)

# Shuffle workdir so it looks like a go hierarchy

# EGO_PN_PARENT="github.com/lxc"
# EGO_PN="${EGO_PN_PARENT}/lxd"

workdir="/var/tmp/portage/app-emulation/lxd-{}/work".format(version)
port_s=path.join(workdir,"lxd-{}".format(upstream_version))
tmpsrctop=path.join(workdir,"lxdtmp")
print("renaming {} to {}".format(port_s,tmpsrctop))
rename(port_s,tmpsrctop)
srctop=path.join(port_s,"src/github.com/lxc")
makedirs(srctop)
ego_pn=path.join(srctop,"lxd")
shutil.move(tmpsrctop,ego_pn)

import subprocess

# install some deps.  -u makes it a no-op if they're already installed and latest.
with open("/etc/portage/package.use/git","w") as f:
    f.write("dev-vcs/git -perl\n")
subprocess.check_call(["emerge","-ut","--keep-going","go","dev-vcs/git"])

# fetch all dependent go packages for our tarball
subprocess.check_call(["go","get","-v","-d","./..."],cwd=ego_pn,env={"GOPATH":port_s,"PATH":"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"})

# go-crypto package includes these sources
# We must delete them here or there are file collisions at merge-time
shutil.rmtree(path.join(port_s,"src","golang.org"))

# We don't need git objects in our tarball
for dent in walk(port_s):
    dirpath,dirnames,filenames = dent
    for dirname in dirnames:
        if dirname == ".git":
            tree = path.join(dirpath,dirname)
            shutil.rmtree(tree)


shutil.make_archive("lxd-{}".format(version),"bztar",port_s)

# Restore the original ebuild file
shutil.copy(origebuild,ebuildpath)
