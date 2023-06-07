# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Simple mutex that uses a TCP server; useful if you cannot install Redis, etc."
HOMEPAGE="https://github.com/ORESoftware/live-mutex#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/async-2.6.3
	>=dev-node/bluebird-3.5.5
	>=dev-node/chalk-2.4.2
	>=dev-node/handlebars-4.1.1
	>=dev-node/lockfile-1.0.4
	>=dev-node/lodash-4.17.15
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

inherit npmv1 eutils

src_prepare() {
	npmv1_src_prepare

	epatch "${FILESDIR}"/fix_broker_memory_leak.patch || die "Error on apply patch"
}

