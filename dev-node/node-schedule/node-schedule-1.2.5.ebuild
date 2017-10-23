# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A cron-like and not-cron-like job scheduler for Node."
HOMEPAGE="https://github.com/node-schedule/node-schedule#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/cron-parser-2.4.3
	>=dev-node/long-timeout-0.1.1
	>=dev-node/sorted-array-functions-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

