# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A library for finding and using SSH public keys"
HOMEPAGE="https://github.com/arekinath/node-sshpk#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/asn1-0.2.3
	>=dev-node/dashdash-1.13.1
	>=dev-node/ecc-jsbn-0.1.1
	>=dev-node/getpass-0.1.6
	>=dev-node/jodid25519-1.0.2
	>=dev-node/jsbn-0.1.0
	>=dev-node/tweetnacl-0.13.3
"
RDEPEND="${DEPEND}"

NPM_SYSTEM_MODULES="
asn1
dashdash
ecc-jsbn
getpass
jodid25519
jsbn
tweetnacl
"

S="${WORKDIR}/package"

inherit npmv1

