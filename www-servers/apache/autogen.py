import re
import packaging.version as pversion

async def generate(hub, **pkginfo):
	github_user = "apache"
	github_repo = "httpd"
	json_list = await hub.pkgtools.fetch.get_page(
		f"https://api.github.com/repos/{github_user}/{github_repo}/tags?per_page=100", is_json=True
	)

	pv = None

	regex = re.compile('.*[candidate|rc|alpha].*')

	for tag in json_list:
		version = tag["name"]
		if regex.match(version) or isinstance(pversion.parse(version), pversion.LegacyVersion):
			#print(f"Skipping version {version}...")
			continue

		pv=version
		break

	if pv is not None:
		# NOTE: We need to use the official tarball. Github tarball are
		#       with broken configure.ac
		url=f"https://dlcdn.apache.org/httpd/httpd-{pv}.tar.bz2"
		ebuild = hub.pkgtools.ebuild.BreezyBuild(
			**pkginfo,
			version=pv,
			github_user=github_user,
			github_repo=github_repo,
			artifacts=[hub.pkgtools.ebuild.Artifact(url=url)],
		)
		ebuild.push()
