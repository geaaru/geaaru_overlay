# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ASN.1 encoder and decoder"
HOMEPAGE="https://github.com/indutny/asn1.js"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bn-js-4.11.8
	>=dev-node/inherits-2.0.3
	>=dev-node/minimalistic-assert-1.0.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="asn1.js"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

