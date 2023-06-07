# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="a little globber"
HOMEPAGE="https://github.com/isaacs/node-glob"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/inflight-1.0.6
	>=dev-node/inherits-2.0.3
	>=dev-node/minimatch-2.0.10
	>=dev-node/once-1.4.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

