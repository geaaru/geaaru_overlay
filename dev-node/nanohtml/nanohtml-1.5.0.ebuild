# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="HTML template strings for the Browser with support for Server Side Rendering in Node."
HOMEPAGE="https://github.com/choojs/nanohtml#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/acorn-6.1.1
	>=dev-node/camel-case-3.0.0
	>=dev-node/convert-source-map-1.6.0
	>=dev-node/estree-is-member-expression-1.0.0
	>=dev-node/hyperx-2.5.4
	>=dev-node/is-boolean-attribute-0.0.1
	>=dev-node/nanoassert-1.1.0
	>=dev-node/nanobench-2.1.1
	>=dev-node/normalize-html-whitespace-0.2.0
	>=dev-node/through2-2.0.5
	>=dev-node/transform-ast-2.4.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

