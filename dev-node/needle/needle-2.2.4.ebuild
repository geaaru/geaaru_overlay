# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The leanest and most handsome HTTP client in the Nodelands."
HOMEPAGE="https://github.com/tomas/needle#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/debug-2.2.0
	>=dev-node/iconv-lite-0.4.23
	>=dev-node/sax-1.2.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

