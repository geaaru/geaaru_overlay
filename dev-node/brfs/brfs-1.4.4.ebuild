# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="browserify fs.readFileSync() static asset inliner"
HOMEPAGE="https://github.com/substack/brfs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/quote-stream-1.0.2
	>=dev-node/resolve-1.8.1
	>=dev-node/static-module-2.2.5
	>=dev-node/through2-2.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

