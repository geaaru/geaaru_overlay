# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Fast Pure JavaScript MessagePack Encoder and Decoder"
HOMEPAGE="https://github.com/kawanet/msgpack-lite"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/event-lite-0.1.1
	>=dev-node/ieee754-1.1.12
	>=dev-node/int64-buffer-0.1.10
	>=dev-node/isarray-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

