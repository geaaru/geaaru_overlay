# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="HTTP request logger middleware for node.js"
HOMEPAGE="https://github.com/expressjs/morgan#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/basic-auth-1.1.0
	>=dev-node/debug-2.6.8
	>=dev-node/depd-1.1.1
	>=dev-node/on-finished-2.3.0
	>=dev-node/on-headers-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

