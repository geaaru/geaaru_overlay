# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Logic-less {{mustache}} templates with JavaScript"
HOMEPAGE="https://github.com/janl/mustache.js"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_BINS="
	mustache => node-mustache
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

