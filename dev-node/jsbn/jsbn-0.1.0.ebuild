# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="The jsbn library is a fast, portable implementation of large-number math in pure JavaScript, enabling public-key crypto and other applications on desktop and mobile browsers."
HOMEPAGE="https://github.com/andyperlitch/jsbn"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

