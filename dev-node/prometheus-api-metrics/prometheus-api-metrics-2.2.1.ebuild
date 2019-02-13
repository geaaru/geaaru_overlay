# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="API and process monitoring with Prometheus for Node.js micro-service"
HOMEPAGE="https://github.com/Zooz/prometheus-api-metrics#readme"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/debug-3.1.0
	>=dev-node/pkginfo-0.4.1
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	src
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

