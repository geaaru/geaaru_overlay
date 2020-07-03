# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Native Abstractions for Node.js: C++ header for Node 0.8 -> 14 compatibility"
HOMEPAGE="https://github.com/nodejs/nan#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	*.h
	tools
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

