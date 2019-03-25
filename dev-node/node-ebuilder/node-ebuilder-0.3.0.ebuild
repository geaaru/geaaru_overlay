# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Gentoo Ebuild factory for NodeJs packages"
HOMEPAGE="http://www.npmjs.com/package/node-ebuilder"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/json5-0.5.1
	>=dev-node/minimist-1.2.0
	>=dev-node/moment-timezone-0.5.21
	>=dev-node/replaceall-0.1.6
	>=dev-node/semver-5.5.1
	>=dev-node/shelljs-0.6.1
"
RDEPEND="${DEPEND}"

NPM_PV="${PV}"
NPM_NO_DEPS=1
NPM_GITHUP_MOD="geaaru/node-ebuilder"
NPM_PKG_DIRS="
	adapters
"
NPM_BINS="
	node-ebuilder.js => node-ebuilder
"

inherit npmv1

