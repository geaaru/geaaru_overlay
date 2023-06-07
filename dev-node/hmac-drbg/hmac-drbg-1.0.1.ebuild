# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Deterministic random bit generator (hmac)"
HOMEPAGE="https://github.com/indutny/hmac-drbg#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/hash-js-1.1.7
	>=dev-node/minimalistic-assert-1.0.1
	>=dev-node/minimalistic-crypto-utils-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

