# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get the npm global path prefix."
HOMEPAGE="https://github.com/jonschlinkert/global-prefix"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/homedir-polyfill-1.0.1
	>=dev-node/ini-1.3.4
	>=dev-node/is-windows-0.2.0
	>=dev-node/which-1.2.12
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

