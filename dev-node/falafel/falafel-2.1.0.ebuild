# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="transform the ast on a recursive walk"
HOMEPAGE="https://github.com/substack/node-falafel#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/acorn-5.7.2
	>=dev-node/foreach-2.0.5
	>=dev-node/isarray-0.0.1
	>=dev-node/object-keys-1.0.12
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

