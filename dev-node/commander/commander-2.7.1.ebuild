# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="the complete solution for node.js command-line programs"
HOMEPAGE="https://www.npmjs.com/package/commander"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
dev-node/graceful-readlink
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_SYSTEM_MODULES="
graceful-readlink
"
# Avoid install of files under bin directory
NPM_BINS="
"

NPM_GITHUP_MOD="substack/node-mkdirp"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PF}.tgz"


inherit npmv1


