# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A neat wrapper around node.js fs.watch / fs.watchFile / fsevents."
HOMEPAGE="https://github.com/paulmillr/chokidar"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/anymatch-3.1.1
	>=dev-node/braces-3.0.2
	>=dev-node/glob-parent-5.1.1
	>=dev-node/is-binary-path-2.1.0
	>=dev-node/is-glob-4.0.1
	>=dev-node/normalize-path-3.0.0
	>=dev-node/readdirp-3.5.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

