# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Router middleware for koa. Provides RESTful resource routing."
HOMEPAGE="https://github.com/alexmingoia/koa-router#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/debug-3.1.0
	>=dev-node/http-errors-1.6.3
	>=dev-node/koa-compose-3.2.1
	>=dev-node/methods-1.1.2
	>=dev-node/path-to-regexp-1.7.0
	>=dev-node/urijs-1.19.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

