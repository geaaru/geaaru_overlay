# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="ES7 spec-compliant String.prototype.trimLeft shim."
HOMEPAGE="https://github.com/es-shims/String.prototype.trimLeft#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/define-properties-1.1.3
	>=dev-node/function-bind-1.1.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="string.prototype.trimleft"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

