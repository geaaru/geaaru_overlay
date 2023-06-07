# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="option parsing and help generation"
HOMEPAGE="https://github.com/gkz/optionator"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/deep-is-0.1.3
	>=dev-node/fast-levenshtein-2.0.6
	>=dev-node/levn-0.3.0
	>=dev-node/prelude-ls-1.1.2
	>=dev-node/type-check-0.3.2
	>=dev-node/wordwrap-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

