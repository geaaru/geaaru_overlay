# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Launch your command line tool with ease."
HOMEPAGE="https://github.com/js-cli/js-liftoff"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/extend-3.0.0
	>=dev-node/findup-sync-0.4.3
	>=dev-node/fined-1.0.2
	>=dev-node/flagged-respawn-0.3.2
	>=dev-node/lodash-isplainobject-4.0.6
	>=dev-node/lodash-isstring-4.0.1
	>=dev-node/lodash-mapvalues-4.6.0
	>=dev-node/rechoir-0.6.2
	>=dev-node/resolve-1.3.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

