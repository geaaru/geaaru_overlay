# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Pan and zoom SVG, HTML or Canvas using mouse or touch input."
HOMEPAGE="https://d3js.org/d3-zoom/"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/d3-dispatch-1.0.5
	>=dev-node/d3-drag-1.2.3
	>=dev-node/d3-interpolate-1.3.2
	>=dev-node/d3-selection-1.4.0
	>=dev-node/d3-transition-1.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

