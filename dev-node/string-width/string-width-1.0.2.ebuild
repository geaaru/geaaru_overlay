# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Get the visual width of a string - the number of columns required to display it"
HOMEPAGE="https://github.com/sindresorhus/string-width#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/code-point-at-1.0.0
	>=dev-node/is-fullwidth-code-point-1.0.0
	>=dev-node/strip-ansi-3.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

