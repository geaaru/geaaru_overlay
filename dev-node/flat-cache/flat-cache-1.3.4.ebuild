# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A stupidly simple key/value storage using files to persist some data"
HOMEPAGE="https://github.com/royriojas/flat-cache#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/circular-json-0.3.3
	>=dev-node/graceful-fs-4.1.15
	>=dev-node/rimraf-2.6.3
	>=dev-node/write-0.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

