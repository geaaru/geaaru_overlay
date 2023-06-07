# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Provides the core module metric / report generation plugin for typhonjs-escomplex module processing."
HOMEPAGE="https://github.com/typhonjs-node-escomplex/escomplex-plugin-metrics-module/"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/typhonjs-escomplex-commons-0.0.14
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

