# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Higher-order functions and common patterns for asynchronous code"
HOMEPAGE="https://caolan.github.io/async/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/lodash-4.17.11
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	dist
	internal
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

