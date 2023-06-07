# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Sinatra inspired web development framework"
HOMEPAGE="https://github.com/visionmedia/express#readme"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/buffer-crc32-0.1.1
	>=dev-node/commander-0.6.1
	>=dev-node/connect-2.7.2
	>=dev-node/cookie-0.0.5
	>=dev-node/cookie-signature-0.0.1
	>=dev-node/debug-2.2.0
	>=dev-node/fresh-0.1.0
	>=dev-node/methods-0.0.1
	>=dev-node/mkdirp-0.3.3
	>=dev-node/range-parser-0.0.4
	>=dev-node/send-0.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

