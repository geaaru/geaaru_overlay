# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Handlebars provides the power necessary to let you build semantic templates effectively with no frustration"
HOMEPAGE="http://www.handlebarsjs.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/neo-async-2.6.1
	>=dev-node/optimist-0.6.1
	>=dev-node/source-map-0.6.1
	>=dev-node/uglify-js-3.6.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

