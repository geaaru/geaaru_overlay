# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An easy-to-use wildcard globbing library."
HOMEPAGE="https://github.com/cowboy/node-globule"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/glob-3.1.21
	>=dev-node/lodash-1.0.2
	>=dev-node/minimatch-0.2.14
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

