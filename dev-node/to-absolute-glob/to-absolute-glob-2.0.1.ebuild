# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="to-absolute-glob nodejs module"
HOMEPAGE="https://github.com/jonschlinkert/to-absolute-glob"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/extend-shallow-2.0.1
	>=dev-node/is-absolute-0.2.6
	>=dev-node/is-negated-glob-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

