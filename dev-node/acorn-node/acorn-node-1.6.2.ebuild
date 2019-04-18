# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="the acorn javascript parser, preloaded with plugins for syntax parity with recent node versions"
HOMEPAGE="https://github.com/browserify/acorn-node"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/acorn-6.1.1
	>=dev-node/acorn-dynamic-import-4.0.0
	>=dev-node/acorn-walk-6.1.1
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

