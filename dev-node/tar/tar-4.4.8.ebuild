# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="tar for node"
HOMEPAGE="https://github.com/npm/node-tar#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/chownr-1.1.1
	>=dev-node/fs-minipass-1.2.5
	>=dev-node/minipass-2.3.5
	>=dev-node/minizlib-1.2.1
	>=dev-node/mkdirp-0.5.1
	>=dev-node/safe-buffer-5.1.2
	>=dev-node/yallist-3.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

