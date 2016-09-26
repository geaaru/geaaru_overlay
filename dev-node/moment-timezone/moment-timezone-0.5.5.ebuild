# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="Parse and display moments in any timezone."
HOMEPAGE="http://momentjs.com/timezone/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/moment-2.12.0
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
data
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

