# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Pollyfill for node.js path.parse, parses a filepath into an object."
HOMEPAGE="https://github.com/jonschlinkert/parse-filepath"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/is-absolute-0.2.6
	>=dev-node/map-cache-0.2.2
	>=dev-node/path-root-0.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

