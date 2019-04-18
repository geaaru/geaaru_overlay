# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="sort module-deps output for deterministic browserify bundles"
HOMEPAGE="https://github.com/substack/deps-sort"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/JSONStream-1.3.5
	>=dev-node/shasum-1.0.2
	>=dev-node/subarg-1.0.0
	>=dev-node/through2-2.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

