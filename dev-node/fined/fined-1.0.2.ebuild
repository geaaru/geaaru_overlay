# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Find a file given a declaration of locations"
HOMEPAGE="https://github.com/js-cli/fined#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/expand-tilde-1.2.2
	>=dev-node/lodash-assignwith-4.2.0
	>=dev-node/lodash-isempty-4.4.0
	>=dev-node/lodash-isplainobject-4.0.6
	>=dev-node/lodash-isstring-4.0.1
	>=dev-node/lodash-pick-4.4.0
	>=dev-node/parse-filepath-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

