# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A logger for just about everything."
HOMEPAGE="https://github.com/winstonjs/winston#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""
RESTRICT="-network-sandbox"

DEPEND="
	>=dev-node/async-3.2.0
	>=dev-node/is-stream-2.0.0
	>=dev-node/logform-2.2.0
	>=dev-node/one-time-1.0.0
	>=dev-node/readable-stream-3.6.0
	>=dev-node/stack-trace-0.0.10
	>=dev-node/triple-beam-1.3.0
	>=dev-node/winston-transport-4.4.0
	>=dev-node/colorspace-1.1.1
	>=dev-node/enabled-2.0.0
	>=dev-node/kuler-2.0.0
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	dist
"

NPM_LOCAL_MODULES="
@dabh
"

S="${WORKDIR}/package"

inherit npmv1

