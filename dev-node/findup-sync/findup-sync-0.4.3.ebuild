# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Find the first file matching a given pattern in the current directory or the nearest ancestor directory."
HOMEPAGE="https://github.com/cowboy/node-findup-sync"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/detect-file-0.1.0
	>=dev-node/is-glob-2.0.1
	>=dev-node/micromatch-2.3.11
	>=dev-node/resolve-dir-0.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

