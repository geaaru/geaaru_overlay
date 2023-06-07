# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Provides module / individual file oriented AST processing for typhonjs-escomplex complexity reports."
HOMEPAGE="https://github.com/typhonjs-node-escomplex/typhonjs-escomplex-module"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/escomplex-plugin-metrics-module-0.0.10
	>=dev-node/escomplex-plugin-syntax-babylon-0.0.10
	>=dev-node/typhonjs-ast-walker-0.1.1
	>=dev-node/typhonjs-escomplex-commons-0.0.14
	>=dev-node/typhonjs-plugin-manager-0.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

