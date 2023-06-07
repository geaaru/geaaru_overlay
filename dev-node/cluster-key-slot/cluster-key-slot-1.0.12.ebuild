# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Generates CRC hashes for strings - for use by node redis clients to determine key slots."
HOMEPAGE="https://github.com/Salakar/cluster-key-slot#readme"

LICENSE="APACHE-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

