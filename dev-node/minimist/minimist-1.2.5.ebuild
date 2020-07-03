# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="This module is the guts of optimist's argument parser without all the fanciful decoration."
HOMEPAGE="https://www.npmjs.com/package/minimist"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

NPM_GITHUP_MOD="substack/minimist"
SRC_URI="https://github.com/${NPM_GITHUP_MOD}/archive/${PV}.zip -> ${P}.zip"


inherit npmv1


