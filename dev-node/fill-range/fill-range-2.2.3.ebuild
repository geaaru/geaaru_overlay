# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Fill in a range of numbers or letters, optionally passing an increment or multiplier to use."
HOMEPAGE="https://github.com/jonschlinkert/fill-range"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/is-number-2.1.0
	>=dev-node/isobject-2.1.0
	>=dev-node/randomatic-1.1.6
	>=dev-node/repeat-element-1.1.2
	>=dev-node/repeat-string-1.6.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

