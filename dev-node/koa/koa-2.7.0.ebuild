# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Koa web app framework"
HOMEPAGE="https://github.com/koajs/koa#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/accepts-1.3.5
	>=dev-node/cache-content-type-1.0.1
	>=dev-node/content-disposition-0.5.3
	>=dev-node/content-type-1.0.4
	>=dev-node/cookies-0.7.3
	>=dev-node/debug-3.1.0
	>=dev-node/delegates-1.0.0
	>=dev-node/depd-1.1.2
	>=dev-node/destroy-1.0.4
	>=dev-node/error-inject-1.0.0
	>=dev-node/escape-html-1.0.3
	>=dev-node/fresh-0.5.2
	>=dev-node/http-assert-1.4.0
	>=dev-node/http-errors-1.7.1
	>=dev-node/is-generator-function-1.0.7
	>=dev-node/koa-compose-4.1.0
	>=dev-node/koa-convert-1.2.0
	>=dev-node/koa-is-json-1.0.0
	>=dev-node/on-finished-2.3.0
	>=dev-node/only-0.0.2
	>=dev-node/parseurl-1.3.2
	>=dev-node/statuses-1.5.0
	>=dev-node/type-is-1.6.16
	>=dev-node/vary-1.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

