# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Read a package.json file"
HOMEPAGE="https://github.com/sindresorhus/read-pkg"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/load-json-file-1.1.0
	>=dev-node/normalize-package-data-2.3.5
	>=dev-node/path-type-1.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

