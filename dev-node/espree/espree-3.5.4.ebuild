# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An Esprima-compatible JavaScript parser built on Acorn"
HOMEPAGE="https://github.com/eslint/espree"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/acorn-5.7.2
	>=dev-node/acorn-jsx-3.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

