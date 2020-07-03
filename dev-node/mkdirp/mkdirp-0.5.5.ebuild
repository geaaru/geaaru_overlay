# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Recursively mkdir, like mkdir -p"
HOMEPAGE="https://github.com/substack/node-mkdirp#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/minimist-1.2.5
"
RDEPEND="${DEPEND}"

NPM_BINS="
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

