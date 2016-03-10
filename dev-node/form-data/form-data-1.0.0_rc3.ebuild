# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A library to create readable 'multipart/form-data' streams. Can be used to submit forms and file uploads to other web applications."
HOMEPAGE="https://www.npmjs.com/package/form-data"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
>=dev-node/async-1.4.0
>=dev-node/combined-stream-1.0.5
>=dev-node/mime-types-2.1.3
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

MY_V=${PV/_rc/-rc}
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_V}.tgz"

NPM_NO_DEPS=1

inherit npmv1

