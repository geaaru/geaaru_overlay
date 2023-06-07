# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Better streaming static file server with Range and conditional-GET support"
HOMEPAGE="https://github.com/pillarjs/send#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/debug-2.2.0
	>=dev-node/depd-1.1.0
	>=dev-node/destroy-1.0.4
	>=dev-node/encodeurl-1.0.1
	>=dev-node/escape-html-1.0.3
	>=dev-node/etag-1.7.0
	>=dev-node/fresh-0.3.0
	>=dev-node/http-errors-1.5.0
	>=dev-node/mime-1.3.4
	>=dev-node/ms-0.7.1
	>=dev-node/on-finished-2.3.0
	>=dev-node/range-parser-1.2.0
	>=dev-node/statuses-1.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

