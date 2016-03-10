# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Streams3, a user-land copy of the stream library from iojs v2.x"
HOMEPAGE="https://www.npmjs.com/package/readable-stream"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/core-util-is-1.0.0
>=dev-node/inherits-2.0.1
>=dev-node/isarray-0.0.1
>=dev-node/process-nextick-args-1.0.6
>=dev-node/string_decoder-0.10.0
>=dev-node/util-deprecate-1.0.1
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

