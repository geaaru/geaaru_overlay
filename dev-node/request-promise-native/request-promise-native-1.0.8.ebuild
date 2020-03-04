# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The simplified HTTP request client 'request' with Promise support. Powered by native ES6 promises."
HOMEPAGE="https://github.com/request/request-promise-native#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/request-promise-core-1.1.3
	>=dev-node/stealthy-require-1.1.1
	>=dev-node/tough-cookie-2.4.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

