# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Streamable SHA hashes in pure javascript"
HOMEPAGE="https://github.com/crypto-browserify/sha.js"

LICENSE="(MIT AND BSD-3-Clause)"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/inherits-2.0.3
	>=dev-node/safe-buffer-5.1.2
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="sha.js"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

