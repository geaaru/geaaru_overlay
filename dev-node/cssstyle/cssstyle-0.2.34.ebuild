# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="CSSStyleDeclaration Object Model implementation"
HOMEPAGE="https://github.com/chad3814/CSSStyleDeclaration"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/cssom-0.3.1
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

