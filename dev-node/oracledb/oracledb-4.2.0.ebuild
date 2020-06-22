# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

inherit npmv1 git-r3

DESCRIPTION="A Node.js module for Oracle Database access"
HOMEPAGE="http://oracle.github.io/node-oracledb/"

EGIT_COMMIT="v${PV}"
EGIT_SUBMODULES=( '*' )
EGIT_REPO_URI="https://github.com/oracle/node-oracledb.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_GITHUP_MOD="oracle/node-oracledb"
NPM_PKG_DIRS="
build/Release
"
NPM_GYP_PKG=1
