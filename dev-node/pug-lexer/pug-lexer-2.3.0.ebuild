# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The pug lexer (takes a string and converts it to an array of tokens)"
HOMEPAGE="https://github.com/pugjs/pug-lexer#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/character-parser-2.2.0
	>=dev-node/is-expression-3.0.0
	>=dev-node/pug-error-1.3.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

