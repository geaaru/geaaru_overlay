import os
import subprocess

from packaging.specifiers import SpecifierSet
from packaging.version import Version

# Unlucky I haven't found a way to retrieve the submodule hash commit
# directly through github API. I will clone the repository and
# i will read the submodule hash.
async def build_ebuild(version, repo, target_dir, pkginfo):
	present = os.path.exists(target_dir)

	if not present:
		res = subprocess.run('git clone %s %s' % (repo, target_dir),
				shell=True)
		if res.returncode != 0:
			print("Error on clone", repo)
			return None

	res = subprocess.run('git checkout v%s' % version,
			shell=True, cwd=target_dir)
	if res.returncode != 0:
		print('Error on checkout to v%s' % version)
		return None

	thirdpary_submodules = {
		"3rdParty/abseil-cpp": "https://github.com/arangodb/abseil-cpp",
		"3rdParty/fmt": "https://github.com/fmtlib/fmt",
		"3rdParty/gtest": "https://github.com/arangodb/googletest",
		"3rdParty/immer": "https://github.com/arangodb/immer",
		"3rdParty/iresearch": "https://github.com/iresearch-toolkit/iresearch",
		"3rdParty/rocksdb": "https://github.com/arangodb/rocksdb",
		"3rdParty/rta-makedata": "https://github.com/arangodb/rta-makedata",
		"3rdParty/velocypack": "https://github.com/arangodb/velocypack",
	}

	github_user = "arangodb"
	github_repo = "arangodb"
	url=f"https://github.com/{github_user}/{github_repo}/archive/refs/tags/v{version}.tar.gz"
	artifacts=[
		hub.pkgtools.ebuild.Artifact(url=url, final_name=f"arangodb-{version}.tar.gz"),
	]

	for submodule, surl in thirdpary_submodules.items():
		res = subprocess.run(f"git rev-parse HEAD:{submodule}",
				shell=True, capture_output=True, cwd=target_dir)
		if res.returncode != 0:
			print(f'Error on retrieve {submodule} submodule git hash')
			return None

		githash = res.stdout.decode("utf-8").strip()

		sname = submodule.replace("3rdParty/", "")
		submod_url=f"{surl}/archive/{githash}.tar.gz"
		submod_tarball=f"arangodb-{sname}-{version}.tar.gz"
		artifacts.append(hub.pkgtools.ebuild.Artifact(url=submod_url, final_name=submod_tarball))

	ebuild = hub.pkgtools.ebuild.BreezyBuild(
		**pkginfo,
		version=version,
		github_user=github_user,
		github_repo=github_repo,
		artifacts=artifacts
	)

	return ebuild


async def generate(hub, **pkginfo):
	supported_releases = {
		'3.11': '>=3.11.0,<3.12.0',
	}
	github_user = "arangodb"
	github_repo = "arangodb"
	json_list = await hub.pkgtools.fetch.get_page(
		f"https://api.github.com/repos/{github_user}/{github_repo}/tags", is_json=True
	)

	handled_releases=[]
	# filter out versions that are words (e.g. "devel") and prereleases
	releases = list(filter(
		lambda v: not v.is_prerelease,
		[Version(rel['name'][1:]) for rel in json_list if rel['name'][1:][0].isnumeric()]
	))

	for version in releases:
		selectedVersion = None

		if len(supported_releases) == 0:
			break

		v1 = Version(str(version))
		for k, v in supported_releases.items():
			selector = SpecifierSet(v)
			if v1 in selector:
				selectedVersion = k
				break

		if selectedVersion:
			handled_releases.append(version)
			del supported_releases[k]
			continue

		# skip release if {version} contains prerelease string
		skip = len(list(filter(lambda n: n > -1, map(lambda s: version.find(s), ["alpha", "beta", "rc"])))) > 0
		if skip:
			continue

	artifacts = []
	git_repo = f"https://github.com/{github_user}/{github_repo}.git"
	tmp_dir = '/tmp/arangodb/'
	for pv in handled_releases:

		ebuild = await build_ebuild(pv, git_repo, tmp_dir, pkginfo)
		if ebuild is None:
			print("ERROR on retrieve hash from repository")
			continue
		ebuild.push()

	if len(handled_releases) > 0:
		subprocess.run('rm -rf %s'% tmp_dir, shell=True)
