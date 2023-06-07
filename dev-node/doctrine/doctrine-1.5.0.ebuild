# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="JSDoc parser"
HOMEPAGE="https://github.com/eslint/doctrine"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/esutils-2.0.2
	>=dev-node/isarray-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

