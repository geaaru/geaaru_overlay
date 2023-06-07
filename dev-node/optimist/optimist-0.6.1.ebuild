# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Light-weight option parsing with an argv hash. No optstrings attached."
HOMEPAGE="https://github.com/substack/node-optimist#readme"

LICENSE="MIT/X11"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/minimist-0.0.8
	>=dev-node/wordwrap-0.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

