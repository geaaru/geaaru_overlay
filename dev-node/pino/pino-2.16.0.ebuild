# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="super fast, all natural json logger"
HOMEPAGE="https://github.com/pinojs/pino#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/chalk-1.1.3
	>=dev-node/fast-json-parse-1.0.3
	>=dev-node/fast-safe-stringify-1.2.3
	>=dev-node/flatstr-1.0.8
	>=dev-node/object-assign-4.1.1
	>=dev-node/once-1.4.0
	>=dev-node/quick-format-unescaped-1.1.2
	>=dev-node/split2-2.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

