# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="decompress tar.bz2 plugin"
HOMEPAGE="https://github.com/kevva/decompress-tarbz2#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/decompress-tar-4.1.1
	>=dev-node/file-type-6.2.0
	>=dev-node/is-stream-1.1.0
	>=dev-node/seek-bzip-1.0.6
	>=dev-node/unbzip2-stream-1.4.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

