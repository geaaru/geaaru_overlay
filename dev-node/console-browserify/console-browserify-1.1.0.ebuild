# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Emulate console for all the browsers"
HOMEPAGE="https://github.com/Raynos/console-browserify"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/date-now-0.1.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

