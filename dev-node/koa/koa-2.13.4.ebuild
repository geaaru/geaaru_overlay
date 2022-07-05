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
	>=dev-node/accepts-1.3.8
	>=dev-node/cache-content-type-1.0.1
	>=dev-node/content-disposition-0.5.4
	>=dev-node/content-type-1.0.4
	>=dev-node/cookies-0.8.0
	>=dev-node/debug-4.3.4
	>=dev-node/delegates-1.0.0
	>=dev-node/depd-2.0.0
	>=dev-node/destroy-1.2.0
	>=dev-node/encodeurl-1.0.2
	>=dev-node/escape-html-1.0.3
	>=dev-node/fresh-0.5.2
	>=dev-node/http-assert-1.5.0
	>=dev-node/http-errors-1.6.3
	>=dev-node/is-generator-function-1.0.10
	>=dev-node/koa-compose-4.1.0
	>=dev-node/koa-convert-2.0.0
	>=dev-node/on-finished-2.4.1
	>=dev-node/only-0.0.2
	>=dev-node/parseurl-1.3.3
	>=dev-node/statuses-1.5.0
	>=dev-node/type-is-1.6.18
	>=dev-node/vary-1.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

