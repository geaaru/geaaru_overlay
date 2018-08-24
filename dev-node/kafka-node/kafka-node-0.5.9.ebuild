# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Client for Apache Kafka v0.8+"
HOMEPAGE="https://github.com/SOHU-Co/kafka-node#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/async-1.0.0
	>=dev-node/binary-0.3.0
	>=dev-node/buffer-crc32-0.2.13
	>=dev-node/buffermaker-1.2.0
	>=dev-node/debug-2.2.0
	>=dev-node/lodash-3.10.1
	>=dev-node/minimatch-3.0.4
	>=dev-node/nested-error-stacks-1.0.2
	>=dev-node/node-uuid-1.4.8
	>=dev-node/node-zookeeper-client-0.2.2
	>=dev-node/optional-0.1.4
	>=dev-node/retry-0.6.1
	>=dev-node/snappy-5.0.5
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

