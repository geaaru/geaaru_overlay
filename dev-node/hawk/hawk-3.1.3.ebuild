# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="HTTP Hawk Authentication Scheme"
HOMEPAGE="https://github.com/hueniverse/hawk#readme"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/boom-2.10.1
	>=dev-node/cryptiles-2.0.5
	>=dev-node/hoek-2.16.3
	>=dev-node/sntp-1.0.9
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

