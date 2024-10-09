# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Recursively mkdir, like 'mkdir -p'"
HOMEPAGE="https://www.npmjs.com/package/mkdirp"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
dev-node/minimist
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/node-${PF}"

NPM_SYSTEM_MODULES="
minimist
"
# Avoid install of files under bin directory
NPM_BINS="
"

NPM_GITHUB_MOD="substack/node-mkdirp"
SRC_URI="https://github.com/${NPM_GITHUB_MOD}/archive/${PV}.zip -> ${P}.zip"


inherit npmv1


