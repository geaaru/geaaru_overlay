# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Add sleep() and usleep() to nodejs"
HOMEPAGE="http://github.com/erikdubbelboer/node-sleep"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/nan-2.7.0
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
build/Release
"
NPM_GYP_PKG=1

S="${WORKDIR}/package"

inherit npmv1

