# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Next generation software complexity analysis of JavaScript-family abstract syntax trees."
HOMEPAGE="https://github.com/typhonjs-node-escomplex/typhonjs-escomplex"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/babylon-6.18.0
	>=dev-node/commander-2.19.0
	>=dev-node/typhonjs-escomplex-module-0.0.9
	>=dev-node/typhonjs-escomplex-project-0.0.9
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

