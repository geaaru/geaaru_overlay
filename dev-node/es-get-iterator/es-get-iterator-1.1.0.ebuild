# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get an iterator for any JS language value. Works robustly across all environments, all versions."
HOMEPAGE="https://github.com/ljharb/es-get-iterator#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/es-abstract-1.17.4
	>=dev-node/has-symbols-1.0.1
	>=dev-node/is-arguments-1.0.4
	>=dev-node/is-map-2.0.1
	>=dev-node/is-set-2.0.1
	>=dev-node/is-string-1.0.5
	>=dev-node/isarray-2.0.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

