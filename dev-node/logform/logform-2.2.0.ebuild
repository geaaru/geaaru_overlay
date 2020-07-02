# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="An mutable object-based log format designed for chaining & objectMode streams."
HOMEPAGE="https://github.com/winstonjs/logform#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/colors-1.3.2
	>=dev-node/fast-safe-stringify-2.0.6
	>=dev-node/fecha-4.2.0
	>=dev-node/ms-2.1.1
	>=dev-node/triple-beam-1.3.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

