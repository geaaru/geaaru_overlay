# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="Reference implementation of Joyent's HTTP Signature scheme."
HOMEPAGE="https://github.com/joyent/node-http-signature/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/assert-plus-0.2.0
	>=dev-node/jsprim-1.2.2
	>=dev-node/sshpk-1.8.3
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
http_signing.md
"

S="${WORKDIR}/package"

inherit npmv1

