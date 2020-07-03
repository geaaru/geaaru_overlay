# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get a list of the files to add from a folder into an npm package"
HOMEPAGE="https://www.npmjs.com/package/npm-packlist"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/ignore-walk-3.0.1
	>=dev-node/npm-bundled-1.0.6
	>=dev-node/npm-normalize-package-bin-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

