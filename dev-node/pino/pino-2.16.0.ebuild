# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="super fast, all natural json logger"
HOMEPAGE="https://github.com/pinojs/pino"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/chalk-1.1.3
	>=dev-node/fast-json-parse-1.0.3
	>=dev-node/fast-safe-stringify-1.2.3
	>=dev-node/flatstr-1.0.8
	>=dev-node/once-1.4.0
	>=dev-node/quick-format-unescaped-1.1.2
	>=dev-node/split2-2.2.0
"
RDEPEND="${DEPEND}"

# Required object.assign-4.1.0 because file polyfill.js
# is no more available on v.4.1.1
NPM_SYSTEM_MODULES="
	chalk
	fast-json-parse
	flatstr
	once
	quick-format-unescaped
	split2
	ansi-regex
	ansi-styles
	core-util-is
	define-properties
	escape-string-regexp
	fast-safe-stringify
	function-bind
	has-ansi
	has-symbols
	inherits
	isarray
	object-keys
	process-nextick-args
	readable-stream
	safe-buffer
	string_decoder
	strip-ansi
	supports-color
	through2
	util-deprecate
	wrappy
	xtend
"
NPM_NO_DEPS=0
NPM_PKG_DIRS="
	usage.txt
"
NPM_BINS="
	pretty.js => pino
"

S="${WORKDIR}/package"

inherit npmv1

src_install() {
	npmv1_src_install
	# Fix permission of pretty.js file
	fperms 0755 /usr/lib64/node_modules/${PN}/pretty.js
}

