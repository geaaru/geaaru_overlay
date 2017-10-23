# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Define multiple non-enumerable properties at once. Uses Object.defineProperty when available; falls back to standard assignment in older engines."
HOMEPAGE="https://github.com/ljharb/define-properties#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/foreach-2.0.5
	>=dev-node/object-keys-1.0.11
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

