import re

async def generate(hub, **pkginfo):
	github_user = "apache"
	github_repo = "httpd"
	json_list = await hub.pkgtools.fetch.get_page(
		f"https://api.github.com/repos/{github_user}/{github_repo}/releases", is_json=True
	)

	pv = None

	for rel in json_list:
		version = rel["tag_name"]

		if re.search('candidate|rc|alpha|'):
			print(f"Skipping version {version}...")
			continue

		pv=version

	if pv is not None:
		# NOTE: We need to use the official tarball. Github tarball are
		#       with broken configure.ac
		url=f"https://dlcdn.apache.org/httpd/httpd-{pv}.tar.bz2"
		ebuild = hub.pkgtools.ebuild.BreezyBuild(
			**pkginfo,
			version=pv,
			tar_version=tar_version,
			github_user=github_user,
			github_repo=github_repo,
			artifacts=[hub.pkgtools.ebuild.Artifact(url=url)],
		)
		ebuild.push()
