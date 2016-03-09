# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="RFC6265 Cookies and Cookie Jar for node.js"
HOMEPAGE="https://www.npmjs.com/package/tough-cookie"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

inherit npmv1

