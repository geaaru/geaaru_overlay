# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="jQuery: The Write Less, Do More, JavaScript Library (packaged for Node.JS)"
HOMEPAGE="https://github.com/coolaj86/node-jquery"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/contextify-0.1.15
	>=dev-node/htmlparser-1.7.6
	>=dev-node/jsdom-0.2.19
	>=dev-node/location-0.0.1
	>=dev-node/navigator-1.0.1
	>=dev-node/xmlhttprequest-1.4.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

