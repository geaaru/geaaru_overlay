# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

#
# @ECLASS: npmv1.eclass
# @MAINTAINER:
# geaaru<at>gmail.com
# @AUTHOR:
# Geaaru geaaru<at>gmail.com
# @DESCRIPTION:
# Purpose: Manage installation of nodejs application with automatic
#          download of the modules defined on package.json file.

inherit multilib

_npmv1_set_metadata() {

    DEPEND="${DEPEND}
        net-libs/nodejs[npm(+)]
    "
    if [[ -z "${NPM_DEFAULT_OPTS}" ]] ; then
        NPM_DEFAULT_OPTS="-E --no-optional"
    fi
    if [[ -z "${NPM_PACKAGEDIR}" ]] ; then
        NPM_PACKAGEDIR="${EROOT}/usr/$(get_libdir)/node_modules/${PN}"
    fi

}

_npmv1_set_metadata
unset -f _npmv1_set_metadata

EXPORT_FUNCTIONS src_prepare src_compile src_install

# @FUNCTION: npmv1_src_prepare
# @DESCRIPTION:
# Implementation of src_prepare() phase. This function is exported.
npmv1_src_prepare() {

    # I'm on ${S}

    # Check if present package.json
    test -f package.json || die "package.json not found in package ${PN}"

}

# @FUNCTION: npmv1_src_configure
# @DESCRIPTION:
# Implementation of src_compile() phase. This function is exported.
npmv1_src_compile() {

    npm ${NPM_DEFAULT_OPTS} install || die "Error on download node modules!"

}

# @FUNCTION: npmv1_src_install
# @DESCRIPTION:
# Implementation of src_compile() phase. This function is exported.
npmv1_src_install() {

    # TODO:
    #  * manage renamed of bins

    if [ -d ${S}/bin ] ; then
        if [ -n "${NPM_BINS}" ] ; then

            # Install only
            for f in ${NPM_BINS} ; do

                exeinto /usr/bin/
                if [ -e ${S}/bin/${f} ] ; then
                    doexe ${S}/bin/${f} || die "Error on install $f."
                else
                    die "Binary ${f} is not present."
                fi

            done # end for

        else

            exeinto /usr/bin/
            for f in ${S}/bin/* ; do
                if [ -e ${f} ] ; then
                    doexe ${f} || die "Error on install $f."
                fi
            done # end for

        fi
    fi

    insinto ${NPM_PACKAGEDIR}
    doins package.json

    dodir ${NPM_PACKAGEDIR}/node_modules/
    cp -rf node_modules/* ${D}/${NPM_PACKAGEDIR}/node_modules/

    for f in ChangeLog LICENSE REAME README.md ; do
        [[ -e ${f} ]] && dodoc ${f}
    done # end for

}



# vim: ts=4 sw=4 expandtab
