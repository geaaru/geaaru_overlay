# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="node style md5 on pure JavaScript"
HOMEPAGE="https://github.com/crypto-browserify/md5.js"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/hash-base-3.0.4
	>=dev-node/inherits-2.0.3
	>=dev-node/safe-buffer-5.1.2
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="md5.js"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

