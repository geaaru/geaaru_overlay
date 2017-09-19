# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="String/Data transformations for use in templating libraries, static site generators and web frameworks"
HOMEPAGE="https://github.com/ForbesLindesay/transformers#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/css-1.0.8
	>=dev-node/promise-2.0.0
	>=dev-node/uglify-js-2.2.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

