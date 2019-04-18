# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="pack node-style source files from a json stream into a browser bundle"
HOMEPAGE="https://github.com/browserify/browser-pack"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/JSONStream-1.3.5
	>=dev-node/combine-source-map-0.8.0
	>=dev-node/defined-1.0.0
	>=dev-node/safe-buffer-5.1.2
	>=dev-node/through2-2.0.3
	>=dev-node/umd-3.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

