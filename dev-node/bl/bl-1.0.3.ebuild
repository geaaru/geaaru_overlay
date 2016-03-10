# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Buffer List: collect buffers and access with a standard readable Buffer interface, streamable too!"
HOMEPAGE="https://www.npmjs.com/package/bl"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/readable-stream-2.0.5
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

