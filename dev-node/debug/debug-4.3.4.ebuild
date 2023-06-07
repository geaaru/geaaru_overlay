# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Lightweight debugging utility for Node.js and the browser"
HOMEPAGE="https://github.com/debug-js/debug#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ms-2.1.2
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	src
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

