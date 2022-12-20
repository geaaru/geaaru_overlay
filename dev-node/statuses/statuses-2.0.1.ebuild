# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="HTTP status utility"
HOMEPAGE="https://github.com/jshttp/statuses#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
codes.json
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

