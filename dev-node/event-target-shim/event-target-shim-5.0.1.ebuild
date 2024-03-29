# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An implementation of WHATWG EventTarget interface."
HOMEPAGE="https://github.com/mysticatea/event-target-shim"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_PKG_DIRS="
	dist
"

S="${WORKDIR}/package"

inherit npmv1

