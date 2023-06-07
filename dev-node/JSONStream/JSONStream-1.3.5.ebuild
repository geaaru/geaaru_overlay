# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="rawStream.pipe(JSONStream.parse()).pipe(streamOfObjects)"
HOMEPAGE="http://github.com/dominictarr/JSONStream"

LICENSE="(MIT OR Apache-2.0)"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/jsonparse-1.3.1
	>=dev-node/through-2.3.8
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

