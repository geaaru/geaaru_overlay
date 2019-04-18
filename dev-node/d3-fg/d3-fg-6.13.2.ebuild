# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Flamegraph visualization for d3 v3.5.x"
HOMEPAGE="https://github.com/davidmarkclements/d3-fg#readme"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/d3-array-1.2.4
	>=dev-node/d3-dispatch-1.0.5
	>=dev-node/d3-ease-1.0.5
	>=dev-node/d3-hierarchy-1.1.8
	>=dev-node/d3-scale-2.2.2
	>=dev-node/d3-selection-1.4.0
	>=dev-node/d3-zoom-1.7.3
	>=dev-node/escape-string-regexp-1.0.5
	>=dev-node/hsl-to-rgb-for-reals-1.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

