# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A node.js driver for mysql. It is written in JavaScript, does not require compiling, and is 100% MIT licensed."
HOMEPAGE="https://github.com/mysqljs/mysql#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bignumber-js-4.0.2
	>=dev-node/readable-stream-2.3.3
	>=dev-node/safe-buffer-5.1.1
	>=dev-node/sqlstring-2.2.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

