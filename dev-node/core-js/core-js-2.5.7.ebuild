# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Standard library"
HOMEPAGE="https://github.com/zloirock/core-js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	build
	client
	core
	es5
	es6
	es7
	fn
	library
	modules
	stage
	web
"


NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

