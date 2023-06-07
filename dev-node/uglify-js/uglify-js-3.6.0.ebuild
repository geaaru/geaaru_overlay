# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="JavaScript parser, mangler/compressor and beautifier toolkit"
HOMEPAGE="https://github.com/mishoo/UglifyJS2#readme"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/commander-2.20.0
	>=dev-node/source-map-0.6.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_BINS="
	uglifyjs
"

NPM_PKG_DIRS="
	tools
"

S="${WORKDIR}/package"

inherit npmv1

