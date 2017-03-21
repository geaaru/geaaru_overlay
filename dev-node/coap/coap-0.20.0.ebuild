# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A CoAP library for node modelled after 'http'"
HOMEPAGE="https://github.com/mcollina/node-coap#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bl-1.2.0
	>=dev-node/capitalize-1.0.0
	>=dev-node/coap-packet-0.1.13
	>=dev-node/debug-2.6.3
	>=dev-node/fastseries-1.7.2
	>=dev-node/lru-cache-4.0.2
	>=dev-node/readable-stream-2.2.6
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

