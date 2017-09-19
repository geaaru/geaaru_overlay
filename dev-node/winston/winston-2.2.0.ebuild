# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="A multi-transport async logging library for Node.js"
HOMEPAGE="https://www.npmjs.com/package/winston"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/async-1.0.0
>=dev-node/colors-1.0.0
>=dev-node/cycle-1.0.0
>=dev-node/eyes-0.1.0
>=dev-node/isstream-0.1.0
>=dev-node/pkginfo-0.3.0
>=dev-node/stack-trace-0.0.1
"
RDEPEND="${DEPEND}"

# NOTE: As is visible here: http://lifeonubuntu.com/tar-errors-ignoring-unknown-extended-header-keyword/
#       I can ignore tar warnings.

S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

