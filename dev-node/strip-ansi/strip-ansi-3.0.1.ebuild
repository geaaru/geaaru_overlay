# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Strip ANSI escape codes"
HOMEPAGE="https://github.com/chalk/strip-ansi"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/ansi-regex-2.0.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

