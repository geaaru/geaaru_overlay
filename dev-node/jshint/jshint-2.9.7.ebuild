# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Static analysis tool for JavaScript"
HOMEPAGE="http://jshint.com/"

LICENSE="(MIT AND JSON)"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/cli-1.0.1
	>=dev-node/console-browserify-1.1.0
	>=dev-node/exit-0.1.2
	>=dev-node/htmlparser2-3.8.3
	>=dev-node/lodash-4.17.11
	>=dev-node/minimatch-3.0.4
	>=dev-node/shelljs-0.3.0
	>=dev-node/strip-json-comments-1.0.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

