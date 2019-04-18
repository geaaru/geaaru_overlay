# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="create hashes for browserify"
HOMEPAGE="https://github.com/crypto-browserify/createHash"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/cipher-base-1.0.4
	>=dev-node/inherits-2.0.3
	>=dev-node/md5-js-1.3.5
	>=dev-node/ripemd160-2.0.2
	>=dev-node/sha-js-2.4.11
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

