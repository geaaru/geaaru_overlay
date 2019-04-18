# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Dominic Tarr's JSONStream using Rodd Vaggs' through2"
HOMEPAGE="https://github.com/ramitos/JSONStream2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/jsonparse-0.0.6
	>=dev-node/through2-0.6.5
	>=dev-node/type-component-0.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

