# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Code for processing filters in pug templates"
HOMEPAGE="https://github.com/pugjs/pug-filters#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/clean-css-3.4.20
	>=dev-node/constantinople-3.1.0
	>=dev-node/jstransformer-1.0.0
	>=dev-node/pug-error-1.3.2
	>=dev-node/pug-walk-1.1.3
	>=dev-node/resolve-1.3.3
	>=dev-node/uglify-js-2.8.28
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

