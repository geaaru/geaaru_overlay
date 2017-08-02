# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A multi-transport async logging library for Node.js"
HOMEPAGE="https://github.com/winstonjs/winston#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/async-1.0.0
	>=dev-node/colors-1.0.3
	>=dev-node/cycle-1.0.3
	>=dev-node/eyes-0.1.8
	>=dev-node/isstream-0.1.2
	>=dev-node/stack-trace-0.0.10
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

