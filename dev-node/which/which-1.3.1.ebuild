# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Like which(1) unix command. Find the first instance of an executable in the PATH."
HOMEPAGE="https://github.com/isaacs/node-which#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/isexe-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_BINS="
	which => node-which
"
S="${WORKDIR}/package"

inherit npmv1

