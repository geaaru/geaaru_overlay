# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Node.js native addon build tool"
HOMEPAGE="https://github.com/nodejs/node-gyp#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/fstream-1.0.11
	>=dev-node/glob-7.1.2
	>=dev-node/graceful-fs-4.1.11
	>=dev-node/minimatch-3.0.4
	>=dev-node/mkdirp-0.5.1
	>=dev-node/nopt-3.0.6
	>=dev-node/npmlog-3.1.2
	>=dev-node/osenv-0.1.5
	>=dev-node/path-array-1.0.1
	>=dev-node/request-2.88.0
	>=dev-node/rimraf-2.6.2
	>=dev-node/semver-5.5.1
	>=dev-node/tar-2.2.1
	>=dev-node/which-1.3.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

