# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Vinyl adapter for the file system"
HOMEPAGE="http://github.com/wearefractal/vinyl-fs"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/defaults-1.0.3
	>=dev-node/glob-stream-3.1.18
	>=dev-node/glob-watcher-0.0.6
	>=dev-node/graceful-fs-3.0.11
	>=dev-node/mkdirp-0.5.1
	>=dev-node/strip-bom-1.0.0
	>=dev-node/through2-0.6.5
	>=dev-node/vinyl-0.4.6
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

