# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A node.js module graceful-readlink."
HOMEPAGE="https://www.npmjs.com/package/graceful-readlink"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

S="${WORKDIR}/${PN}-master"

DEPEND=""
RDEPEND="${DEPEND}"

# There isn't a tag! :'(
SRC_URI="https://github.com/zhiyelee/graceful-readlink/archive/master.zip"

NPM_GITHUP_MOD="zhiyelee/graceful-readlink"

inherit npmv1


