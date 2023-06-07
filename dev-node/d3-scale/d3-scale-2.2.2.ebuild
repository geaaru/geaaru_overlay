# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Encodings that map abstract data to visual representation."
HOMEPAGE="https://d3js.org/d3-scale/"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/d3-array-1.2.4
	>=dev-node/d3-collection-1.0.7
	>=dev-node/d3-format-1.3.2
	>=dev-node/d3-interpolate-1.3.2
	>=dev-node/d3-time-1.0.11
	>=dev-node/d3-time-format-2.1.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

