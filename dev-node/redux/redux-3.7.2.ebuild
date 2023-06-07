# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Predictable state container for JavaScript apps"
HOMEPAGE="http://redux.js.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lodash-4.17.4
	>=dev-node/lodash-es-4.17.4
	>=dev-node/loose-envify-1.3.1
	>=dev-node/symbol-observable-1.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

