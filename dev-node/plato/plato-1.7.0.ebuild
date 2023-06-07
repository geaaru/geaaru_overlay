# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="JavaScript source analysis and visualizer"
HOMEPAGE="https://github.com/es-analysis/plato"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/typhonjs-escomplex-0.0.9
	>=dev-node/fs-extra-0.30.0
	>=dev-node/glob-7.0.6
	>=dev-node/jshint-2.9.7
	>=dev-node/lodash-4.13.1
	>=dev-node/posix-getopt-1.2.0
	>=dev-node/eslint-3.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

