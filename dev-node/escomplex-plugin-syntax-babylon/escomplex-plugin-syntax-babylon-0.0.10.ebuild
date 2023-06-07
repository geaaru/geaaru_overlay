# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Provides a plugin for typhonjs-escomplex module processing which loads syntax definitions for trait resolution for Babylon AST."
HOMEPAGE="https://github.com/typhonjs-node-escomplex/escomplex-plugin-syntax-babylon/"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/escomplex-plugin-syntax-estree-0.0.10
	>=dev-node/typhonjs-escomplex-commons-0.0.14
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

