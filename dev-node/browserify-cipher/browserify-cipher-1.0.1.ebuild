# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ciphers for the browser"
HOMEPAGE="https://github.com/crypto-browserify/browserify-cipher#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/browserify-aes-1.2.0
	>=dev-node/browserify-des-1.0.2
	>=dev-node/evp_bytestokey-1.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

