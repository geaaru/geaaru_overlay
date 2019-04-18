# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="quote and parse shell commands"
HOMEPAGE="https://github.com/substack/node-shell-quote#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/array-filter-0.0.1
	>=dev-node/array-map-0.0.0
	>=dev-node/array-reduce-0.0.0
	>=dev-node/jsonify-0.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

