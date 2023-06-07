# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="yargs the modern, pirate-themed, successor to optimist."
HOMEPAGE="http://yargs.js.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/cliui-3.2.0
	>=dev-node/decamelize-1.2.0
	>=dev-node/get-caller-file-1.0.2
	>=dev-node/lodash-assign-4.2.0
	>=dev-node/os-locale-1.4.0
	>=dev-node/read-pkg-up-1.0.1
	>=dev-node/require-directory-2.1.1
	>=dev-node/require-main-filename-1.0.1
	>=dev-node/set-blocking-2.0.0
	>=dev-node/string-width-1.0.2
	>=dev-node/which-module-1.0.0
	>=dev-node/window-size-0.2.0
	>=dev-node/y18n-3.2.1
	>=dev-node/yargs-parser-2.4.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

