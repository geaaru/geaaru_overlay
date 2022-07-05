# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Parse and generate MQTT packets like a breeze"
HOMEPAGE="https://github.com/mqttjs/mqtt-packet"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bl-4.1.0
	>=dev-node/debug-4.3.1
	>=dev-node/process-nextick-args-2.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

