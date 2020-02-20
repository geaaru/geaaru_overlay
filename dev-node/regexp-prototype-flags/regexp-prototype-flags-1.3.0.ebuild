# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ES6 spec-compliant RegExp.prototype.flags shim."
HOMEPAGE="https://github.com/es-shims/RegExp.prototype.flags#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/define-properties-1.1.3
	>=dev-node/es-abstract-1.17.4
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="regexp.prototype.flags"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

