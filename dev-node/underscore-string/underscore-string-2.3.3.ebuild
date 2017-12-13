# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="String manipulation extensions for Underscore.js javascript library."
HOMEPAGE="http://epeli.github.com/underscore.string/"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="underscore.string"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

