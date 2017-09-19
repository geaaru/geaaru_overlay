# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Terminal string styling done right. Much color."
HOMEPAGE="https://github.com/chalk/chalk#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/ansi-styles-2.2.1
	>=dev-node/escape-string-regexp-1.0.5
	>=dev-node/has-ansi-2.0.0
	>=dev-node/strip-ansi-3.0.1
	>=dev-node/supports-color-2.0.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

