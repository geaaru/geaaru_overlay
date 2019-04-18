# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="utility library for parsing asn1 files for use with browserify-sign."
HOMEPAGE="https://github.com/crypto-browserify/parse-asn1#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/asn1-js-4.10.1
	>=dev-node/browserify-aes-1.2.0
	>=dev-node/create-hash-1.2.0
	>=dev-node/evp_bytestokey-1.0.3
	>=dev-node/pbkdf2-3.0.17
	>=dev-node/safe-buffer-5.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

