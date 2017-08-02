# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="socket.io protocol parser"
HOMEPAGE="https://github.com/Automattic/socket.io-parser#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/component-emitter-1.2.1
	>=dev-node/debug-2.6.8
	>=dev-node/has-binary2-1.0.2
	>=dev-node/isarray-2.0.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="socket.io-parser"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

