# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Router middleware for koa. Provides RESTful resource routing."
HOMEPAGE="https://github.com/koajs/router"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/debug-4.1.1
	>=dev-node/http-errors-1.7.3
	>=dev-node/koa-compose-4.1.0
	>=dev-node/methods-1.1.2
	>=dev-node/path-to-regexp-1.8.0
	>=dev-node/urijs-1.19.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

