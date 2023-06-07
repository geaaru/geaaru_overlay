# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Extracting archives made easy"
HOMEPAGE="https://github.com/kevva/decompress#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/decompress-tar-4.1.1
	>=dev-node/decompress-tarbz2-4.1.1
	>=dev-node/decompress-targz-4.1.1
	>=dev-node/decompress-unzip-4.0.1
	>=dev-node/graceful-fs-4.2.4
	>=dev-node/make-dir-1.3.0
	>=dev-node/pify-2.3.0
	>=dev-node/strip-dirs-2.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

