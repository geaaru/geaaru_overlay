# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A helper for installing repos without a package.json with npm."
HOMEPAGE="https://github.com/shama/napa"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/download-0.1.19
	>=dev-node/npmlog-0.0.4
	>=dev-node/rimraf-2.2.8
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

