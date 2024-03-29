# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Tiny WebSockets"
HOMEPAGE="https://github.com/uWebSockets/uWebSockets"

LICENSE="Zlib"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
build/Release
*.node
"
NPM_GYP_PKG=1

S="${WORKDIR}/package"

inherit npmv1

