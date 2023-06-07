# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A delightful, performance-focused Redis client for Node and io.js"
HOMEPAGE="https://github.com/luin/ioredis#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bluebird-3.5.1
	>=dev-node/cluster-key-slot-1.0.12
	>=dev-node/debug-2.2.0
	>=dev-node/double-ended-queue-2.1.0
	>=dev-node/flexbuffer-0.0.6
	>=dev-node/lodash-4.17.10
	>=dev-node/redis-commands-1.3.5
	>=dev-node/redis-parser-1.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

