# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="ES2015 Promise ponyfill"
HOMEPAGE="https://github.com/floatdrop/pinkie-promise"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/pinkie-2.0.4
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

