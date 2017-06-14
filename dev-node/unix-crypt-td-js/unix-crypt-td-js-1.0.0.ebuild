# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Javascript implementation of the Unix crypt(3) DES-based hash"
HOMEPAGE="https://github.com/TimDumol/unix-crypt-td-js#readme"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
src
"

S="${WORKDIR}/package"

inherit npmv1

