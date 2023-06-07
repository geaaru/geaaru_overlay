# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="aes, for browserify"
HOMEPAGE="https://github.com/crypto-browserify/browserify-aes"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/buffer-xor-1.0.3
	>=dev-node/cipher-base-1.0.4
	>=dev-node/create-hash-1.2.0
	>=dev-node/evp_bytestokey-1.0.3
	>=dev-node/inherits-2.0.3
	>=dev-node/safe-buffer-5.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

