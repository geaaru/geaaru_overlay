# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Prettifier for Pino log lines"
HOMEPAGE="https://github.com/pinojs/pino-pretty#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/colorette-2.0.20
	>=dev-node/dateformat-4.6.3
	>=dev-node/fast-copy-3.0.1
	>=dev-node/fast-safe-stringify-2.1.1
	>=dev-node/help-me-4.2.0
	>=dev-node/joycon-3.1.1
	>=dev-node/minimist-1.2.8
	>=dev-node/on-exit-leak-free-2.1.0
	>=dev-node/pino-abstract-transport-1.0.0
	>=dev-node/pump-3.0.0
	>=dev-node/readable-stream-4.4.0
	>=dev-node/secure-json-parse-2.7.0
	>=dev-node/sonic-boom-3.3.0
	>=dev-node/strip-json-comments-3.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

