# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

MY_V=${PV/_beta/-beta.}

DESCRIPTION="Allows users to use generators in order to write common functions that can be both sync or async."
HOMEPAGE="https://github.com/loganfsmyth/gensync"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_V}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

