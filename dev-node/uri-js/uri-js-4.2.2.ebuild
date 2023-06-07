# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An RFC 3986/3987 compliant, scheme extendable URI/IRI parsing/validating/resolving library for JavaScript."
HOMEPAGE="https://github.com/garycourt/uri-js"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/punycode-2.1.1
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	dist
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

