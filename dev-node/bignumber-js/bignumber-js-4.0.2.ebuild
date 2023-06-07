# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A library for arbitrary-precision decimal and non-decimal arithmetic"
HOMEPAGE="https://github.com/MikeMcl/bignumber.js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="bignumber.js"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

