# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Normalizes data that can be found in package.json files."
HOMEPAGE="https://github.com/npm/normalize-package-data#readme"

LICENSE="BSD-2-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/hosted-git-info-2.1.5
	>=dev-node/is-builtin-module-1.0.0
	>=dev-node/semver-5.3.0
	>=dev-node/validate-npm-package-license-3.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

