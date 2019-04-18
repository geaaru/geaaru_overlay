# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="pure js diffie-hellman"
HOMEPAGE="https://github.com/crypto-browserify/diffie-hellman"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bn-js-4.11.8
	>=dev-node/miller-rabin-4.0.1
	>=dev-node/randombytes-2.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

