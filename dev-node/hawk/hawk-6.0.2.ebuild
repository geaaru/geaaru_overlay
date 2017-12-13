# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="HTTP Hawk Authentication Scheme"
HOMEPAGE="https://github.com/hueniverse/hawk#readme"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/boom-4.3.1
	>=dev-node/cryptiles-3.1.2
	>=dev-node/hoek-4.2.0
	>=dev-node/sntp-2.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

