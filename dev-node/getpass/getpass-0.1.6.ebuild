# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="getpass for node.js"
HOMEPAGE="https://github.com/arekinath/node-getpass#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/assert-plus-1.0.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

