# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Download and extract files effortlessly"
HOMEPAGE="https://github.com/kevva/download#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/decompress-0.2.5
	>=dev-node/each-async-0.1.3
	>=dev-node/get-stdin-0.1.0
	>=dev-node/get-urls-0.1.2
	>=dev-node/mkdirp-0.3.5
	>=dev-node/nopt-2.2.1
	>=dev-node/request-2.83.0
	>=dev-node/through2-0.4.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

