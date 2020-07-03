# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Node.js native addon binary install tool"
HOMEPAGE="https://github.com/mapbox/node-pre-gyp#readme"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/detect-libc-1.0.3
	>=dev-node/mkdirp-0.5.5
	>=dev-node/needle-2.5.0
	>=dev-node/nopt-4.0.3
	>=dev-node/npm-packlist-1.4.8
	>=dev-node/npmlog-4.1.2
	>=dev-node/rc-1.2.8
	>=dev-node/rimraf-2.7.1
	>=dev-node/semver-5.7.1
	>=dev-node/tar-4.4.13
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

