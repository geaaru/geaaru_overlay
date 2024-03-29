# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Optimized bcrypt in plain JavaScript with zero dependencies. Compatible to 'bcrypt'."
HOMEPAGE="https://github.com/dcodeIO/bcrypt.js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
src
dist
externs
scripts
"
S="${WORKDIR}/package"

inherit npmv1

