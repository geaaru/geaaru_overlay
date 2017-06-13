# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Redis client library"
HOMEPAGE="https://github.com/NodeRedis/node_redis"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/double-ended-queue-2.1.0
	>=dev-node/redis-commands-1.3.1
	>=dev-node/redis-parser-2.6.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

