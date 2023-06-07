# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Memoize the results of a call to the RegExp constructor, avoiding repetitious runtime compilation of the same string and options, resulting in suprising performance improvements."
HOMEPAGE="https://github.com/jonschlinkert/regex-cache"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/is-equal-shallow-0.1.3
	>=dev-node/is-primitive-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

