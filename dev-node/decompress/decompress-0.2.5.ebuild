# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Easily extract zip, tar and tar.gz archives"
HOMEPAGE="https://github.com/kevva/decompress#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/adm-zip-0.4.7
	>=dev-node/ext-name-1.0.1
	>=dev-node/get-stdin-0.1.0
	>=dev-node/mkdirp-0.3.5
	>=dev-node/nopt-2.2.1
	>=dev-node/rimraf-2.6.2
	>=dev-node/stream-combiner-0.0.4
	>=dev-node/tar-0.1.20
	>=dev-node/tempfile-0.1.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

