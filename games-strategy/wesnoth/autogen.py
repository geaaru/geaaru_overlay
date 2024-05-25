#!/usr/bin/env python3

from packaging import version

async def generate(hub, **pkginfo):
	github_user = "wesnoth"
	github_repo = "wesnoth"
	extra_args = {}
	github_result = await hub.pkgtools.github.tag_gen(hub, github_user, github_repo, **extra_args)

	version = github_result['tag']
	# We need to use tarball from sourceforge because the github tarball
	# is without thirdparty libraries
	url = f'https://downloads.sourceforge.net/{github_repo}/{github_repo}-{version}.tar.bz2'
	final_name = f'{pkginfo["name"]}-{version}.tar.bz2'
	src_artifact = hub.pkgtools.ebuild.Artifact(url=url, final_name=final_name)

	result = {
			"version": version,
			"sha": github_result['sha'],
			"artifacts": [ src_artifact ],
			"tag": github_result['tag'],
			"github_user": github_user,
			"github_repo": github_repo,
	}

	pkginfo.update(result)
	ebuild = hub.pkgtools.ebuild.BreezyBuild(**pkginfo)
	ebuild.push()

# vim: ts=4 sw=4 noet
