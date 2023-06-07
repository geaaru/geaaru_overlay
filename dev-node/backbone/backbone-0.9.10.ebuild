# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Give your JS App some Backbone with Models, Views, Collections, and Events."
HOMEPAGE="http://www.npmjs.com/package/backbone"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/underscore-1.4.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

