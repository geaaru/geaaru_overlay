# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="convert module usage to inline expressions"
HOMEPAGE="https://github.com/substack/static-module"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/concat-stream-1.6.0
	>=dev-node/convert-source-map-1.5.1
	>=dev-node/duplexer2-0.1.4
	>=dev-node/escodegen-1.9.1
	>=dev-node/falafel-2.1.0
	>=dev-node/has-1.0.3
	>=dev-node/magic-string-0.22.5
	>=dev-node/merge-source-map-1.0.4
	>=dev-node/object-inspect-1.4.1
	>=dev-node/quote-stream-1.0.2
	>=dev-node/readable-stream-2.3.6
	>=dev-node/shallow-copy-0.0.1
	>=dev-node/static-eval-2.0.0
	>=dev-node/through2-2.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

