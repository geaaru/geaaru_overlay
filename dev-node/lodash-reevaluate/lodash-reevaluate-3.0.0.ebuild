# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The modern build of lodash’s internal reEvaluate as a module."
HOMEPAGE="https://lodash.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="lodash._reevaluate"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

