# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="super fast, all natural json logger"
HOMEPAGE="https://getpino.io"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/atomic-sleep-1.0.0
	>=dev-node/fast-redact-3.2.0
	>=dev-node/on-exit-leak-free-2.1.0
	>=dev-node/pino-abstract-transport-1.0.0
	>=dev-node/pino-std-serializers-6.2.1
	>=dev-node/process-warning-2.2.0
	>=dev-node/quick-format-unescaped-4.0.4
	>=dev-node/real-require-0.2.0
	>=dev-node/safe-stable-stringify-2.4.3
	>=dev-node/sonic-boom-3.3.0
	>=dev-node/thread-stream-2.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

