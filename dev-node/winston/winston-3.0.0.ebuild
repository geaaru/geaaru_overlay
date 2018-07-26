# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A logger for just about everything."
HOMEPAGE="https://github.com/winstonjs/winston#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/async-2.6.1
	>=dev-node/diagnostics-1.1.1
	>=dev-node/is-stream-1.1.0
	>=dev-node/logform-1.9.1
	>=dev-node/one-time-0.0.4
	>=dev-node/readable-stream-2.3.6
	>=dev-node/stack-trace-0.0.10
	>=dev-node/triple-beam-1.3.0
	>=dev-node/winston-transport-4.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

