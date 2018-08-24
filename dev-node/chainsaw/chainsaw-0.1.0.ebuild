# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Build chainable fluent interfaces the easy way... with a freakin' chainsaw!"
HOMEPAGE="https://github.com/substack/node-chainsaw#readme"

LICENSE="MIT/X11"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/traverse-0.3.9
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

