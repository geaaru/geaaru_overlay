# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Return a copy of an object excluding the given key, or array of keys. Also accepts an optional filter function as the last argument."
HOMEPAGE="https://github.com/jonschlinkert/object.omit"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/for-own-0.1.5
	>=dev-node/is-extendable-0.1.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="object.omit"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

