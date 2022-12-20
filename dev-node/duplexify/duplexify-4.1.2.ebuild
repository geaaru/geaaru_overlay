# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Turn a writable and readable stream into a streams2 duplex stream with support for async initialization and streams1/streams2 input"
HOMEPAGE="https://github.com/mafintosh/duplexify"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/end-of-stream-1.4.4
	>=dev-node/inherits-2.0.4
	>=dev-node/readable-stream-3.6.0
	>=dev-node/stream-shift-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

