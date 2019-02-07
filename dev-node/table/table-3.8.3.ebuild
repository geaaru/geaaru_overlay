# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Formats data into a string table."
HOMEPAGE="https://github.com/gajus/table#readme"

LICENSE="BSD-3-Clause"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/ajv-4.11.8
	>=dev-node/ajv-keywords-1.5.1
	>=dev-node/chalk-1.1.3
	>=dev-node/lodash-4.17.11
	>=dev-node/slice-ansi-0.0.4
	>=dev-node/string-width-2.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

