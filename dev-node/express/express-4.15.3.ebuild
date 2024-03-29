# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Fast, unopinionated, minimalist web framework"
HOMEPAGE="http://expressjs.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/accepts-1.3.3
	>=dev-node/array-flatten-1.1.1
	>=dev-node/content-disposition-0.5.2
	>=dev-node/content-type-1.0.2
	>=dev-node/cookie-0.3.1
	>=dev-node/cookie-signature-1.0.6
	>=dev-node/debug-2.6.7
	>=dev-node/depd-1.1.0
	>=dev-node/encodeurl-1.0.1
	>=dev-node/escape-html-1.0.3
	>=dev-node/etag-1.8.0
	>=dev-node/finalhandler-1.0.3
	>=dev-node/fresh-0.5.0
	>=dev-node/merge-descriptors-1.0.1
	>=dev-node/methods-1.1.2
	>=dev-node/on-finished-2.3.0
	>=dev-node/parseurl-1.3.1
	>=dev-node/path-to-regexp-0.1.7
	>=dev-node/proxy-addr-1.1.4
	>=dev-node/qs-6.4.0
	>=dev-node/range-parser-1.2.0
	>=dev-node/send-0.15.3
	>=dev-node/serve-static-1.12.3
	>=dev-node/setprototypeof-1.0.3
	>=dev-node/statuses-1.3.1
	>=dev-node/type-is-1.6.15
	>=dev-node/utils-merge-1.0.0
	>=dev-node/vary-1.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

