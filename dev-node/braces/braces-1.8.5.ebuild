# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Fastest brace expansion for node.js, with the most complete support for the Bash 4.3 braces specification."
HOMEPAGE="https://github.com/jonschlinkert/braces"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/expand-range-1.8.2
	>=dev-node/preserve-0.2.0
	>=dev-node/repeat-element-1.1.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

