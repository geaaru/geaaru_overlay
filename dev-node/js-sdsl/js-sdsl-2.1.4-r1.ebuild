# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="javascript standard data structure library which benchmark against C++ STL"
HOMEPAGE="https://github.com/ZLY201/js-sdsl#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_PKG_DIRS="
	dist
"

S="${WORKDIR}/package"

inherit npmv1

