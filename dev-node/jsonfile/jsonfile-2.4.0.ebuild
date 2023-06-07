# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Easily read/write JSON files."
HOMEPAGE="https://github.com/jprichardson/node-jsonfile#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/graceful-fs-4.1.11
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

