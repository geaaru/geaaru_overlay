# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get available v8 flags."
HOMEPAGE="https://github.com/tkellen/node-v8flags"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/user-home-1.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

