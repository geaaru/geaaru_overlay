# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Streams3, a user-land copy of the stream library from Node.js"
HOMEPAGE="https://github.com/nodejs/readable-stream#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/core-util-is-1.0.2
	>=dev-node/inherits-2.0.3
	>=dev-node/isarray-1.0.0
	>=dev-node/process-nextick-args-1.0.7
	>=dev-node/safe-buffer-5.1.1
	>=dev-node/string_decoder-1.0.3
	>=dev-node/util-deprecate-1.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

