# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ECMAScript spec abstract operations."
HOMEPAGE="https://github.com/ljharb/es-abstract#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/es-to-primitive-1.2.1
	>=dev-node/function-bind-1.1.1
	>=dev-node/has-1.0.3
	>=dev-node/has-symbols-1.0.1
	>=dev-node/is-callable-1.1.5
	>=dev-node/is-regex-1.0.5
	>=dev-node/object-inspect-1.7.0
	>=dev-node/object-keys-1.1.1
	>=dev-node/object-assign-4.1.1
	>=dev-node/string-prototype-trimleft-2.1.1
	>=dev-node/string-prototype-trimright-2.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

NPM_PKG_DIRS="
	2015
	2016
	2017
	2018
	2019
	5
	helpers
"

S="${WORKDIR}/package"

inherit npmv1

