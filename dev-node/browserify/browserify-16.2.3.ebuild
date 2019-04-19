# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="browser-side require() the node way"
HOMEPAGE="https://github.com/browserify/browserify#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/JSONStream-1.3.5
	>=dev-node/assert-1.4.1
	>=dev-node/browser-pack-6.1.0
	>=dev-node/browser-resolve-1.11.3
	>=dev-node/browserify-zlib-0.2.0
	>=dev-node/buffer-5.2.1
	>=dev-node/cached-path-relative-1.0.2
	>=dev-node/concat-stream-1.6.2
	>=dev-node/console-browserify-1.1.0
	>=dev-node/constants-browserify-1.0.0
	>=dev-node/crypto-browserify-3.12.0
	>=dev-node/defined-1.0.0
	>=dev-node/deps-sort-2.0.0
	>=dev-node/domain-browser-1.2.0
	>=dev-node/duplexer2-0.1.4
	>=dev-node/events-2.1.0
	>=dev-node/glob-7.1.3
	>=dev-node/has-1.0.3
	>=dev-node/htmlescape-1.1.1
	>=dev-node/https-browserify-1.0.0
	>=dev-node/inherits-2.0.3
	>=dev-node/insert-module-globals-7.2.0
	>=dev-node/labeled-stream-splicer-2.0.1
	>=dev-node/mkdirp-0.5.1
	>=dev-node/module-deps-6.2.0
	>=dev-node/os-browserify-0.3.0
	>=dev-node/parents-1.0.1
	>=dev-node/path-browserify-0.0.1
	>=dev-node/process-0.11.10
	>=dev-node/punycode-1.3.2
	>=dev-node/querystring-es3-0.2.1
	>=dev-node/read-only-stream-2.0.0
	>=dev-node/readable-stream-2.0.6
	>=dev-node/resolve-1.10.0
	>=dev-node/shasum-1.0.2
	>=dev-node/shell-quote-1.6.1
	>=dev-node/stream-browserify-2.0.2
	>=dev-node/stream-http-2.8.3
	>=dev-node/string_decoder-1.2.0
	>=dev-node/subarg-1.0.0
	>=dev-node/syntax-error-1.4.0
	>=dev-node/through2-2.0.5
	>=dev-node/timers-browserify-1.4.2
	>=dev-node/tty-browserify-0.0.1
	>=dev-node/url-0.11.0
	>=dev-node/util-0.10.4
	>=dev-node/vm-browserify-1.1.0
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_BINS="
cmd.js => ${PN}-cmd
"

S="${WORKDIR}/package"

inherit npmv1

