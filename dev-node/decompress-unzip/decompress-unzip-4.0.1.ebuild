# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="decompress zip plugin"
HOMEPAGE="https://github.com/kevva/decompress-unzip#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/file-type-3.9.0
	>=dev-node/get-stream-2.3.1
	>=dev-node/pify-2.3.0
	>=dev-node/yauzl-2.10.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

