# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Another JSON Schema Validator"
HOMEPAGE="https://github.com/epoberezkin/ajv"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/fast-deep-equal-3.1.1
	>=dev-node/fast-json-stable-stringify-2.0.0
	>=dev-node/json-schema-traverse-0.4.1
	>=dev-node/uri-js-4.2.2
"
RDEPEND="${DEPEND}"
NPM_PKG_DIRS="
dist
scripts
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

