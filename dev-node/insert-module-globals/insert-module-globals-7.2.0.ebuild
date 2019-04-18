# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="insert implicit module globals into a module-deps stream"
HOMEPAGE="https://github.com/browserify/insert-module-globals"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/JSONStream-1.3.5
	>=dev-node/acorn-node-1.6.2
	>=dev-node/combine-source-map-0.8.0
	>=dev-node/concat-stream-1.6.2
	>=dev-node/is-buffer-1.1.5
	>=dev-node/path-is-absolute-1.0.1
	>=dev-node/process-0.11.10
	>=dev-node/through2-2.0.3
	>=dev-node/undeclared-identifiers-1.1.3
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

