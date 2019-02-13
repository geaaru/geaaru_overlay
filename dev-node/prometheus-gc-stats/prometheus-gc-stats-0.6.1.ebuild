# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Report Garbage Collection stats using Prometheus"
HOMEPAGE="https://github.com/SimenB/node-prometheus-gc-stats#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/gc-stats-1.2.1
	>=dev-node/optional-0.1.4
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

