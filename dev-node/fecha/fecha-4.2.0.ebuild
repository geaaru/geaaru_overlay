# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Date formatting and parsing"
HOMEPAGE="https://github.com/taylorhakes/fecha"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	dist
	lib
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

