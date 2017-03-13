# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Parse a glob pattern into an object of tokens."
HOMEPAGE="https://github.com/jonschlinkert/parse-glob"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/glob-base-0.3.0
	>=dev-node/is-dotfile-1.0.2
	>=dev-node/is-extglob-1.0.0
	>=dev-node/is-glob-2.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

