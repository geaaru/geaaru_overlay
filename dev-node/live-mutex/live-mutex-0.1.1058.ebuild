# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Simple mutex that uses a TCP server; useful if you cannot install Redis, etc."
HOMEPAGE="https://github.com/ORESoftware/live-mutex#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/async-2.6.2
	>=dev-node/bluebird-3.5.3
	>=dev-node/chalk-2.4.2
	>=dev-node/handlebars-4.1.1
	>=dev-node/lockfile-1.0.4
	>=dev-node/lodash-4.17.11
	>=dev-node/node-redis-warlock-0.2.0
	>=dev-node/redis-2.8.0
	>=dev-node/tcp-ping-0.1.1
	>=dev-node/uuid-3.3.2
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
@oresoftware
"

NPM_PKG_DIRS="
	dist
"

S="${WORKDIR}/package"

inherit npmv1

