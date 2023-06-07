# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Advanced file system stream things"
HOMEPAGE="https://github.com/npm/fstream#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/graceful-fs-4.1.11
	>=dev-node/inherits-2.0.3
	>=dev-node/mkdirp-0.5.1
	>=dev-node/rimraf-2.6.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

