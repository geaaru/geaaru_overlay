# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Bare bones Promises/A+ implementation"
HOMEPAGE="https://github.com/then/promise"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/asap-2.0.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

