# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Streams3, a user-land copy of the stream library from Node.js"
HOMEPAGE="https://github.com/nodejs/readable-stream#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/inherits-2.0.4
	>=dev-node/string_decoder-1.3.0
	>=dev-node/util-deprecate-1.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

