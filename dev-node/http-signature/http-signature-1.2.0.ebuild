# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Reference implementation of Joyent's HTTP Signature scheme."
HOMEPAGE="https://github.com/joyent/node-http-signature/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/assert-plus-1.0.0
	>=dev-node/jsprim-1.4.1
	>=dev-node/sshpk-1.13.1
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
http_signing.md
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

