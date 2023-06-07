# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Portable Unix shell commands for Node.js"
HOMEPAGE="http://github.com/shelljs/shelljs"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	src
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

