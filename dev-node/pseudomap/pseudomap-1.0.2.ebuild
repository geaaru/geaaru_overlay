# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A thing that is a lot like ES6 'Map', but without iterators,
for use in environments where 'for..of' syntax and 'Map' are not available"
HOMEPAGE="https://www.npmjs.com/package/pseudomap"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

inherit npmv1

