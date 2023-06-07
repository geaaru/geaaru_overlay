# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="walk the dependency graph to generate json output that can be fed into browser-pack"
HOMEPAGE="https://github.com/browserify/module-deps"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/JSONStream-1.3.5
	>=dev-node/browser-resolve-1.11.3
	>=dev-node/cached-path-relative-1.0.2
	>=dev-node/concat-stream-1.6.2
	>=dev-node/defined-1.0.0
	>=dev-node/detective-5.2.0
	>=dev-node/duplexer2-0.1.4
	>=dev-node/inherits-2.0.3
	>=dev-node/parents-1.0.1
	>=dev-node/readable-stream-2.3.6
	>=dev-node/resolve-1.10.0
	>=dev-node/stream-combiner2-1.1.1
	>=dev-node/subarg-1.0.0
	>=dev-node/through2-2.0.3
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_BINS="
cmd.js => ${PN}-cmd
"

S="${WORKDIR}/package"

inherit npmv1

