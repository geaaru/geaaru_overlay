# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Convert character encodings in pure javascript."
HOMEPAGE="https://github.com/ashtuchkin/iconv-lite"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/safer-buffer-2.1.2
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	encodings
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

