# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Light-weight option parsing with an argv hash. No optstrings attached."
HOMEPAGE="https://github.com/bcoe/yargs#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/camelcase-1.2.1
	>=dev-node/cliui-2.1.0
	>=dev-node/decamelize-1.2.0
	>=dev-node/window-size-0.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

