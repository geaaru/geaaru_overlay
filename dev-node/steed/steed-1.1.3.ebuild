# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="horsepower for your modules"
HOMEPAGE="https://github.com/mcollina/steed#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/fastfall-1.5.1
	>=dev-node/fastparallel-2.3.0
	>=dev-node/fastq-1.6.0
	>=dev-node/fastseries-1.7.2
	>=dev-node/reusify-1.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

