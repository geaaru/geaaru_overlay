# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="Give me a string and I'll tell you if it's a valid npm package license string"
HOMEPAGE="https://github.com/kemitchell/validate-npm-package-license.js#readme"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/spdx-correct-1.0.2
	>=dev-node/spdx-expression-parse-1.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

