# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Serve static files"
HOMEPAGE="https://github.com/expressjs/serve-static#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/encodeurl-1.0.1
	>=dev-node/escape-html-1.0.3
	>=dev-node/parseurl-1.3.1
	>=dev-node/send-0.14.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

