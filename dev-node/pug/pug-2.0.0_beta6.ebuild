# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="A clean, whitespace-sensitive template language for writing HTML"
HOMEPAGE="http://jade-lang.com"

MY_PV="${PV/_beta/-beta}"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_PV}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/pug-code-gen-1.1.0
	>=dev-node/pug-filters-1.2.4
	>=dev-node/pug-lexer-2.3.0
	>=dev-node/pug-linker-1.0.1
	>=dev-node/pug-load-2.0.3
	>=dev-node/pug-parser-2.0.1
	>=dev-node/pug-runtime-2.0.2
	>=dev-node/pug-strip-comments-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

