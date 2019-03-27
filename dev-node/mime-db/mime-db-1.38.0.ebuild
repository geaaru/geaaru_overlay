# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Media Type Database"
HOMEPAGE="https://github.com/jshttp/mime-db#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
db.json
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

