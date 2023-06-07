# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A JSONSchema validator that uses code generation to be extremely fast"
HOMEPAGE="https://github.com/mafintosh/is-my-json-valid"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/generate-function-2.0.0
	>=dev-node/generate-object-property-1.2.0
	>=dev-node/is-my-ip-valid-1.0.0
	>=dev-node/jsonpointer-4.0.1
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

