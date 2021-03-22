# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="request body parsing for co"
HOMEPAGE="https://github.com/cojs/co-body#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/inflation-2.0.0
	>=dev-node/qs-6.9.6
	>=dev-node/raw-body-2.4.1
	>=dev-node/type-is-1.6.18
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

