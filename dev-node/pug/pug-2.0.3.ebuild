# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A clean, whitespace-sensitive template language for writing HTML"
HOMEPAGE="https://pugjs.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/pug-code-gen-2.0.1
	>=dev-node/pug-filters-3.1.0
	>=dev-node/pug-lexer-4.0.0
	>=dev-node/pug-linker-3.0.5
	>=dev-node/pug-load-2.0.11
	>=dev-node/pug-parser-5.0.0
	>=dev-node/pug-runtime-2.0.4
	>=dev-node/pug-strip-comments-1.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

