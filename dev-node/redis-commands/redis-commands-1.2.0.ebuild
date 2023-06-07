# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Redis commands"
HOMEPAGE="https://github.com/NodeRedis/redis-commonds"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
commands.json
tools
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

