# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="resolve which handles browser field support in package.json"
HOMEPAGE="https://github.com/shtylman/node-browser-resolve#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/resolve-1.1.7
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

