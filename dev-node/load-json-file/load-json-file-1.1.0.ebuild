# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="Read and parse a JSON file"
HOMEPAGE="https://github.com/sindresorhus/load-json-file"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/graceful-fs-4.1.9
	>=dev-node/parse-json-2.2.0
	>=dev-node/pify-2.3.0
	>=dev-node/pinkie-promise-2.0.1
	>=dev-node/strip-bom-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

