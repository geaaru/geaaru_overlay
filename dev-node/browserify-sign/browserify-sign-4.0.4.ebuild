# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="adds node crypto signing for browsers"
HOMEPAGE="https://github.com/crypto-browserify/browserify-sign#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bn-js-4.11.8
	>=dev-node/browserify-rsa-4.0.1
	>=dev-node/create-hash-1.2.0
	>=dev-node/create-hmac-1.1.7
	>=dev-node/elliptic-6.4.1
	>=dev-node/inherits-2.0.3
	>=dev-node/parse-asn1-5.1.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

