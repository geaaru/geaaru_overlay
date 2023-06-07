# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Object.prototype.hasOwnProperty.call shortcut"
HOMEPAGE="https://github.com/tarruda/has"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/function-bind-1.1.1
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	src
"


NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

