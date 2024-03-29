# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Determine whether a JavaScript expression evaluates to a constant (using acorn)"
HOMEPAGE="https://github.com/ForbesLindesay/constantinople#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/babel-types-6.26.0
	>=dev-node/babylon-6.18.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=0

NPM_LOCAL_MODULES="@types"

S="${WORKDIR}/package"

inherit npmv1

