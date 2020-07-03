# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The leanest and most handsome HTTP client in the Nodelands."
HOMEPAGE="https://github.com/tomas/needle#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/debug-3.2.6
	>=dev-node/iconv-lite-0.4.24
	>=dev-node/sax-1.2.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

