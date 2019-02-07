# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An AST-based pattern checker for JavaScript."
HOMEPAGE="http://eslint.org"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/chalk-1.1.3
	>=dev-node/concat-stream-1.6.2
	>=dev-node/debug-2.2.0
	>=dev-node/doctrine-1.5.0
	>=dev-node/es6-map-0.1.5
	>=dev-node/escope-3.6.0
	>=dev-node/espree-3.5.4
	>=dev-node/estraverse-4.2.0
	>=dev-node/esutils-2.0.2
	>=dev-node/file-entry-cache-1.3.1
	>=dev-node/glob-7.1.3
	>=dev-node/globals-9.18.0
	>=dev-node/ignore-3.3.10
	>=dev-node/imurmurhash-0.1.4
	>=dev-node/inquirer-0.12.0
	>=dev-node/is-my-json-valid-2.19.0
	>=dev-node/is-resolvable-1.1.0
	>=dev-node/js-yaml-3.12.1
	>=dev-node/json-stable-stringify-1.0.1
	>=dev-node/levn-0.3.0
	>=dev-node/lodash-4.17.11
	>=dev-node/mkdirp-0.5.1
	>=dev-node/optionator-0.8.2
	>=dev-node/path-is-inside-1.0.2
	>=dev-node/pluralize-1.2.1
	>=dev-node/progress-1.1.8
	>=dev-node/require-uncached-1.0.3
	>=dev-node/shelljs-0.6.1
	>=dev-node/strip-bom-3.0.0
	>=dev-node/strip-json-comments-1.0.4
	>=dev-node/table-3.8.3
	>=dev-node/text-table-0.2.0
	>=dev-node/user-home-2.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

