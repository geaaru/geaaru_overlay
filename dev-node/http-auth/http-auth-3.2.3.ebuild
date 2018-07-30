# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Node.js package for HTTP basic and digest access authentication."
HOMEPAGE="http://http-auth.info"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/apache-crypt-1.1.2
	>=dev-node/apache-md5-1.0.6
	>=dev-node/bcryptjs-2.3.0
	>=dev-node/uuid-3.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
src
"

S="${WORKDIR}/package"

inherit npmv1

