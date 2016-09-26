# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="easily create complex multi-column command-line-interfaces"
HOMEPAGE="https://github.com/bcoe/cliui"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/center-align-0.1.3
	>=dev-node/right-align-0.1.3
	>=dev-node/wordwrap-0.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

