# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="logger for npm"
HOMEPAGE="https://github.com/npm/npmlog#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/are-we-there-yet-1.1.5
	>=dev-node/console-control-strings-1.1.0
	>=dev-node/gauge-2.6.0
	>=dev-node/set-blocking-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

