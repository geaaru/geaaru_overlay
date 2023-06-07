# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A library of cross-platform tested terminal/console command strings for doing things like color and cursor positioning.  This is a subset of both ansi and vt100.  All control codes included work on both Windows & Unix-like OSes, except where noted."
HOMEPAGE="https://github.com/iarna/console-control-strings#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

