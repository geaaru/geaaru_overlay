# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Generate randomized strings of a specified length, fast. Only the length is necessary, but you can optionally generate patterns using any combination of numeric, alpha-numeric, alphabetical, special or custom characters."
HOMEPAGE="https://github.com/jonschlinkert/randomatic"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/is-number-2.1.0
	>=dev-node/kind-of-3.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

