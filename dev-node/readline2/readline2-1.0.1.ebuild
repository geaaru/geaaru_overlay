# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Readline Façade fixing bugs and issues found in releases 0.8 and 0.10"
HOMEPAGE="https://github.com/SBoudrias/readline2#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/code-point-at-1.1.0
	>=dev-node/is-fullwidth-code-point-1.0.0
	>=dev-node/mute-stream-0.0.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

