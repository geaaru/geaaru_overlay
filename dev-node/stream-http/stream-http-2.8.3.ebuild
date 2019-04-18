# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Streaming http in the browser"
HOMEPAGE="https://github.com/jhiesey/stream-http#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/builtin-status-codes-3.0.0
	>=dev-node/inherits-2.0.3
	>=dev-node/readable-stream-2.3.6
	>=dev-node/to-arraybuffer-1.0.1
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

