# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Core Promise support implementation for the simplified HTTP request client 'request'."
HOMEPAGE="https://github.com/request/promise-core#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/lodash-4.17.10
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
configure
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

