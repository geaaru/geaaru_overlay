# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A module for serving static files.  Does etags, caching, etc."
HOMEPAGE="https://github.com/isaacs/st#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/async-cache-1.1.0
	>=dev-node/bl-1.2.1
	>=dev-node/fd-0.0.3
	>=dev-node/graceful-fs-4.1.11
	>=dev-node/mime-1.4.1
	>=dev-node/negotiator-0.6.1
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

