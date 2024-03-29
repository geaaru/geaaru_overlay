# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Combine an array of streams into a single duplex stream using pump and duplexify"
HOMEPAGE="https://github.com/mafintosh/pumpify"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/duplexify-3.5.1
	>=dev-node/inherits-2.0.3
	>=dev-node/pump-1.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

