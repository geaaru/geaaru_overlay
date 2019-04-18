# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Add source maps of multiple files, offset them and then combine them into one source map"
HOMEPAGE="https://github.com/thlorenz/combine-source-map"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/convert-source-map-1.1.3
	>=dev-node/inline-source-map-0.6.2
	>=dev-node/lodash-memoize-3.0.4
	>=dev-node/source-map-0.5.7
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

