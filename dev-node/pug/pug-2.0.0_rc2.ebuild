# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

MY_V=${PV/_rc/-rc.}

DESCRIPTION="A clean, whitespace-sensitive template language for writing HTML"
HOMEPAGE="https://pugjs.org"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_V}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/pug-code-gen-1.1.1
	>=dev-node/pug-filters-2.1.3
	>=dev-node/pug-lexer-3.1.0
	>=dev-node/pug-linker-3.0.1
	>=dev-node/pug-load-2.0.7
	>=dev-node/pug-parser-3.0.0
	>=dev-node/pug-runtime-2.0.3
	>=dev-node/pug-strip-comments-1.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

