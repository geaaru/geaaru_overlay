# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Base stream implementations for winston@3 and up."
HOMEPAGE="https://github.com/winstonjs/winston-transport#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/readable-stream-2.3.7
	>=dev-node/triple-beam-1.3.0
	>=dev-node/process-nextick-args-2.0.0
"
RDEPEND="${DEPEND}"

NPM_LOCAL_MODULES="
readable-stream
"

S="${WORKDIR}/package"

inherit npmv1

