# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Node.js body parsing middleware"
HOMEPAGE="https://github.com/expressjs/body-parser#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bytes-2.4.0
	>=dev-node/content-type-1.0.2
	>=dev-node/debug-2.2.0
	>=dev-node/depd-1.1.0
	>=dev-node/http-errors-1.5.0
	>=dev-node/iconv-lite-0.4.13
	>=dev-node/on-finished-2.3.0
	>=dev-node/qs-6.2.0
	>=dev-node/raw-body-2.1.7
	>=dev-node/type-is-1.6.13
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

