# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ECMAScript “ToPrimitive” algorithm. Provides ES5 and ES2015 versions."
HOMEPAGE="https://github.com/ljharb/es-to-primitive#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/is-callable-1.1.5
	>=dev-node/is-date-object-1.0.2
	>=dev-node/is-symbol-1.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
helpers
"

S="${WORKDIR}/package"

inherit npmv1

