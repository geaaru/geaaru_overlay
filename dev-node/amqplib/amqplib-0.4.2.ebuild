# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An AMQP 0-9-1 (e.g., RabbitMQ) library and client."
HOMEPAGE="http://squaremo.github.io/amqp.node/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bitsyntax-0.0.4
	>=dev-node/buffer-more-ints-0.0.2
	>=dev-node/readable-stream-1.1.14
	>=dev-node/when-3.6.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

