# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="🔥 single-command flamegraph profiling 🔥"
HOMEPAGE="https://github.com/davidmarkclements/0x#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ajv-6.10.0
	>=dev-node/browserify-16.2.3
	>=dev-node/concat-stream-1.6.2
	>=dev-node/d3-fg-6.13.2
	>=dev-node/debounce-1.2.0
	>=dev-node/debug-4.1.1
	>=dev-node/end-of-stream-1.4.1
	>=dev-node/env-string-1.0.1
	>=dev-node/escape-string-regexp-1.0.5
	>=dev-node/execspawn-1.0.1
	>=dev-node/has-unicode-2.0.1
	>=dev-node/hsl-to-rgb-for-reals-1.1.0
	>=dev-node/jsonstream2-1.1.2
	>=dev-node/make-dir-1.3.0
	>=dev-node/minimist-1.2.0
	>=dev-node/morphdom-2.5.4
	>=dev-node/nanohtml-1.5.0
	>=dev-node/on-net-listen-1.1.2
	>=dev-node/opn-5.5.0
	>=dev-node/perf-sym-2.0.3
	>=dev-node/pump-3.0.0
	>=dev-node/pumpify-1.5.1
	>=dev-node/semver-5.6.0
	>=dev-node/single-line-log-1.1.2
	>=dev-node/split2-3.1.1
	>=dev-node/tachyons-4.11.1
	>=dev-node/through2-2.0.5
	>=dev-node/which-1.3.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

