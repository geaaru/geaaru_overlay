# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="EC cryptography"
HOMEPAGE="https://github.com/indutny/elliptic"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bn-js-4.11.8
	>=dev-node/brorand-1.1.0
	>=dev-node/hash-js-1.1.7
	>=dev-node/hmac-drbg-1.0.1
	>=dev-node/inherits-2.0.3
	>=dev-node/minimalistic-assert-1.0.1
	>=dev-node/minimalistic-crypto-utils-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

