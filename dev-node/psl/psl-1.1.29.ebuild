# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Domain name parser based on the Public Suffix List"
HOMEPAGE="https://github.com/wrangr/psl#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	data
"


NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

