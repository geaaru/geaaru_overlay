# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="favicon serving middleware with caching"
HOMEPAGE="https://github.com/expressjs/serve-favicon#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/etag-1.8.0
	>=dev-node/fresh-0.5.0
	>=dev-node/ms-2.0.0
	>=dev-node/parseurl-1.3.1
	>=dev-node/safe-buffer-5.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

