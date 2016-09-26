# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="A clean, whitespace-sensitive template language for writing HTML"
HOMEPAGE="http://jade-lang.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/character-parser-1.2.1
	>=dev-node/clean-css-3.4.20
	>=dev-node/commander-2.6.0
	>=dev-node/constantinople-3.0.2
	>=dev-node/jstransformer-0.0.2
	>=dev-node/mkdirp-0.5.1
	>=dev-node/transformers-2.1.0
	>=dev-node/uglify-js-2.7.3
	>=dev-node/void-elements-2.0.1
	>=dev-node/with-4.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

