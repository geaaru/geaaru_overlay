# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="High performance middleware framework"
HOMEPAGE="https://github.com/senchalabs/connect#readme"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/buffer-crc32-0.1.1
	>=dev-node/bytes-0.1.0
	>=dev-node/cookie-0.0.5
	>=dev-node/cookie-signature-0.0.1
	>=dev-node/debug-2.2.0
	>=dev-node/formidable-1.0.11
	>=dev-node/fresh-0.1.0
	>=dev-node/pause-0.0.1
	>=dev-node/qs-0.5.1
	>=dev-node/send-0.1.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

