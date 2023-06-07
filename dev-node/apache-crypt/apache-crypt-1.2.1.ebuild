# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Node.js module for Apache style password encryption using crypt(3)."
HOMEPAGE="http://github.com/http-auth/apache-crypt"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/unix-crypt-td-js-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
src
"

S="${WORKDIR}/package"

inherit npmv1

