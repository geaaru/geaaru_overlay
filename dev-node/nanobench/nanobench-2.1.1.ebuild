# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Simple benchmarking tool with TAP-like output that is easy to parse"
HOMEPAGE="https://github.com/mafintosh/nanobench"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/browser-process-hrtime-0.1.3
	>=dev-node/chalk-1.1.3
	>=dev-node/mutexify-1.2.0
	>=dev-node/pretty-hrtime-1.0.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

