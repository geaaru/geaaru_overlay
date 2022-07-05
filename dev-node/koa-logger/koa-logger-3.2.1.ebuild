# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Logging middleware for koa"
HOMEPAGE="https://github.com/koajs/logger#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bytes-3.1.2
	>=dev-node/chalk-2.4.2
	>=dev-node/humanize-number-0.0.2
	>=dev-node/passthrough-counter-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

