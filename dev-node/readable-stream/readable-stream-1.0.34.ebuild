# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Streams2, a user-land copy of the stream library from Node.js v0.10.x"
HOMEPAGE="https://github.com/isaacs/readable-stream#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/core-util-is-1.0.2
	>=dev-node/inherits-2.0.3
	>=dev-node/isarray-0.0.1
	>=dev-node/string_decoder-0.10.31
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

