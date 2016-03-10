# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A library for finding and using SSH public keys"
HOMEPAGE="https://www.npmjs.com/package/sshpk"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/asn1-0.2.3
<dev-node/asn1-0.3.0
>=dev-node/dashdash-1.10.1
<dev-node/dashdash-2.0.0
>=dev-node/ecc-jsbn-0.0.1
<dev-node/ecc-jsbn-1.0.0
>=dev-node/jodid25519-1.0.0
<dev-node/jodid25519-2.0.0
>=dev-node/jsbn-0.1.0
<dev-node/jsbn-0.2.0
>=dev-node/tweetnacl-0.13.0
<dev-node/tweetnacl-1.0.0
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

# Sshpk use all assert-plus release
# so I maintain old assert-plus under
# node_modules directory
#NPM_NO_DEPS=1

NPM_SYSTEM_MODULES="
asn1
dashdash
ecc-jsbn
jsbn
tweetnacl
jodid25519
"

inherit npmv1

