# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Create HTTP error objects"
HOMEPAGE="https://github.com/jshttp/http-errors#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/depd-1.1.1
	>=dev-node/inherits-2.0.3
	>=dev-node/setprototypeof-1.0.3
	>=dev-node/statuses-1.3.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

