# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="DES implementation"
HOMEPAGE="https://github.com/indutny/des.js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/inherits-2.0.3
	>=dev-node/minimalistic-assert-1.0.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="des.js"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

