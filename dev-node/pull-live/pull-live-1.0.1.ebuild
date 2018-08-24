# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="construct a pull-stream for reading from a writable source, can read old records, new (live) records, or both."
HOMEPAGE="https://github.com/dominictarr/pull-live"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/pull-cat-1.1.11
	>=dev-node/pull-stream-3.6.9
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

