# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="A JavaScript implementation of the W3C DOM"
HOMEPAGE="https://github.com/tmpvar/jsdom#readme"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/contextify-0.1.15
	>=dev-node/cssom-0.2.5
	>=dev-node/cssstyle-0.2.34
	>=dev-node/htmlparser-1.7.7
	>=dev-node/request-2.72.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

