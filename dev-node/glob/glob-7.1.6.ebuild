# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="a little globber"
HOMEPAGE="https://github.com/isaacs/node-glob#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/fs-realpath-1.0.0
	>=dev-node/inflight-1.0.6
	>=dev-node/inherits-2.0.4
	>=dev-node/minimatch-3.0.4
	>=dev-node/once-1.4.0
	>=dev-node/path-is-absolute-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

