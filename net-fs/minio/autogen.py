#!/usr/bin/env python3

from packaging import version

def get_release(release_data):
	releases = list(filter(lambda x: x["prerelease"] is False and x["draft"] is False, release_data))
	return None if not releases else sorted(releases, key=lambda x: version.parse(x["tag_name"])).pop()

async def generate(hub, **pkginfo):
	user = "minio"
	repo = "minio"
	release_data = await hub.pkgtools.fetch.get_page(f"https://api.github.com/repos/{user}/{repo}/releases", is_json=True)
	latest_release = get_release(release_data)
	if latest_release is None:
		raise hub.pkgtools.ebuild.BreezyError(f"Can't find a suitable release of {repo}")

	version = latest_release["tag_name"]
	data = await hub.pkgtools.fetch.get_page(
			f"https://api.github.com/repos/{user}/{repo}/git/refs/tags/{version}",
			is_json=True,
	)

	url = latest_release["tarball_url"]
	final_name = f'{pkginfo["name"]}-{version}.tar.gz'
	src_artifact = hub.pkgtools.ebuild.Artifact(url=url, final_name=final_name)
	artifacts = await hub.pkgtools.golang.generate_gosum_from_artifact(src_artifact)
	version=version.replace('RELEASE.', '')
	version=version.replace('-', '.').replace('T', '.').replace('Z', '')
	ebuild = hub.pkgtools.ebuild.BreezyBuild(
		**pkginfo,
		version=version.lstrip("v"),
		tag_sha=data['object']['sha'],
		github_user=user,
		github_repo=repo,
		gosum=artifacts["gosum"],
		artifacts=[src_artifact, *artifacts["gosum_artifacts"]],
	)
	ebuild.push()

# vim: ts=4 sw=4 noet
