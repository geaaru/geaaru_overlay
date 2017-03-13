# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The lodash method _.templateSettings exported as a module."
HOMEPAGE="https://lodash.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/lodash-reinterpolate-3.0.0
	>=dev-node/lodash-escape-3.2.0
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="lodash.templatesettings"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

