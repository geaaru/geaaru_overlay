# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="implementation of crypto for the browser"
HOMEPAGE="https://github.com/crypto-browserify/crypto-browserify"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/browserify-cipher-1.0.1
	>=dev-node/browserify-sign-4.0.4
	>=dev-node/create-ecdh-4.0.3
	>=dev-node/create-hash-1.2.0
	>=dev-node/create-hmac-1.1.7
	>=dev-node/diffie-hellman-5.0.3
	>=dev-node/inherits-2.0.3
	>=dev-node/pbkdf2-3.0.17
	>=dev-node/public-encrypt-4.0.3
	>=dev-node/randombytes-2.1.0
	>=dev-node/randomfill-1.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

