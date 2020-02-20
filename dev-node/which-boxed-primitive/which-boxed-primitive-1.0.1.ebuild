# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Which kind of boxed JS primitive is this?"
HOMEPAGE="https://github.com/ljharb/which-boxed-primitive#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/is-bigint-1.0.0
	>=dev-node/is-boolean-object-1.0.1
	>=dev-node/is-number-object-1.0.4
	>=dev-node/is-string-1.0.5
	>=dev-node/is-symbol-1.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

