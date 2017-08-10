# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="utilities for primitive JavaScript types"
HOMEPAGE="https://github.com/joyent/node-jsprim#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/assert-plus-1.0.0
	>=dev-node/extsprintf-1.3.0
	>=dev-node/json-schema-0.2.3
	>=dev-node/verror-1.10.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

