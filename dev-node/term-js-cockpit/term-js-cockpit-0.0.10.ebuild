# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Cockpit's fork of the term.js project"
HOMEPAGE="https://github.com/cockpit-project/term.js"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="term.js-cockpit"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

