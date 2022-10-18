# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="parse argument options"
HOMEPAGE="https://github.com/minimistjs/minimist"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_GITHUP_MOD="minimistjs/minimist"
SRC_URI="https://github.com/${NPM_GITHUP_MOD}/archive/v${PV}.zip -> ${P}.zip"

inherit npmv1
