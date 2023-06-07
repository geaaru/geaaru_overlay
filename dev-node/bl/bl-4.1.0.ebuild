# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Buffer List: collect buffers and access with a standard readable Buffer interface, streamable too!"
HOMEPAGE="https://github.com/rvagg/bl"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/buffer-5.7.1
	>=dev-node/inherits-2.0.4
	>=dev-node/readable-stream-3.6.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

