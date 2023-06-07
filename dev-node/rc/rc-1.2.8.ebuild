# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="hardwired configuration loader"
HOMEPAGE="https://github.com/dominictarr/rc#readme"

LICENSE="(BSD-2-Clause OR MIT OR Apache-2.0)"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/deep-extend-0.6.0
	>=dev-node/ini-1.3.5
	>=dev-node/minimist-1.2.0
	>=dev-node/strip-json-comments-2.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

