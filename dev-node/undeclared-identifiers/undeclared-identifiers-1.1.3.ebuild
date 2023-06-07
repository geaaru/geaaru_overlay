# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="find undeclared identifiers and property accesses in a javascript file."
HOMEPAGE="https://github.com/goto-bus-stop/undeclared-identifiers"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/acorn-node-1.6.2
	>=dev-node/dash-ast-1.0.0
	>=dev-node/get-assigned-identifiers-1.2.0
	>=dev-node/simple-concat-1.0.0
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

