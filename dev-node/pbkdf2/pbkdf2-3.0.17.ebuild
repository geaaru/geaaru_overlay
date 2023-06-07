# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="This library provides the functionality of PBKDF2 with the ability to use any supported hashing algorithm returned from crypto.getHashes()"
HOMEPAGE="https://github.com/crypto-browserify/pbkdf2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/create-hash-1.2.0
	>=dev-node/create-hmac-1.1.7
	>=dev-node/ripemd160-2.0.2
	>=dev-node/safe-buffer-5.1.2
	>=dev-node/sha-js-2.4.11
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

