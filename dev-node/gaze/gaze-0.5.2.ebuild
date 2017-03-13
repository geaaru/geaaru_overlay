# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A globbing fs.watch wrapper built from the best parts of other fine watch libs."
HOMEPAGE="https://github.com/shama/gaze"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/globule-0.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

