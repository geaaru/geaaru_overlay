# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A collection of common interactive command line user interfaces."
HOMEPAGE="https://github.com/SBoudrias/Inquirer.js#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/ansi-escapes-1.4.0
	>=dev-node/ansi-regex-2.0.0
	>=dev-node/chalk-1.1.3
	>=dev-node/cli-cursor-1.0.2
	>=dev-node/cli-width-2.2.0
	>=dev-node/figures-1.7.0
	>=dev-node/lodash-4.17.11
	>=dev-node/readline2-1.0.1
	>=dev-node/run-async-0.1.0
	>=dev-node/rx-lite-3.1.2
	>=dev-node/string-width-1.0.2
	>=dev-node/strip-ansi-3.0.1
	>=dev-node/through-2.3.8
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

