# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Node.js final http responder"
HOMEPAGE="https://github.com/pillarjs/finalhandler#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/debug-2.6.8
	>=dev-node/encodeurl-1.0.1
	>=dev-node/escape-html-1.0.3
	>=dev-node/on-finished-2.3.0
	>=dev-node/parseurl-1.3.1
	>=dev-node/statuses-1.3.1
	>=dev-node/unpipe-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

