# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Stacktrace prettyfier with theme support."
HOMEPAGE="https://github.com/thlorenz/pretty-trace"

LICENSE="[object Object]"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ansicolors-0.2.1
	>=dev-node/split2-0.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

