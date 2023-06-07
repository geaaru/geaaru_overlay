# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ECMAScript6 Map polyfill"
HOMEPAGE="https://github.com/medikoo/es6-map#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/d-1.0.0
	>=dev-node/es5-ext-0.10.46
	>=dev-node/es6-iterator-2.0.3
	>=dev-node/es6-set-0.1.5
	>=dev-node/es6-symbol-3.1.1
	>=dev-node/event-emitter-0.3.5
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

