# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Babel Types is a Lodash-esque utility library for AST nodes"
HOMEPAGE="https://babeljs.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/babel-runtime-6.26.0
	>=dev-node/esutils-2.0.2
	>=dev-node/lodash-4.17.10
	>=dev-node/to-fast-properties-1.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

