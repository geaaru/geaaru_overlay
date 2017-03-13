# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Returns an object with the (non-glob) base path and the actual pattern."
HOMEPAGE="https://github.com/jonschlinkert/glob-base"

LICENSE="[object Object]"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/glob-parent-2.0.0
	>=dev-node/is-glob-2.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

