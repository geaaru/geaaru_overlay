# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Do stuff with Node.js's native JavaScript modules"
HOMEPAGE="https://github.com/isaacs/natives#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

