# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Parse and display moments in any timezone."
HOMEPAGE="http://momentjs.com/timezone/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/moment-2.22.2
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
data
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

