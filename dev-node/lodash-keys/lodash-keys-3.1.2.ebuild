# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The modern build of lodash’s _.keys as a module."
HOMEPAGE="https://lodash.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lodash-getnative-3.9.1
	>=dev-node/lodash-isarguments-3.1.0
	>=dev-node/lodash-isarray-3.0.4
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="lodash.keys"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

