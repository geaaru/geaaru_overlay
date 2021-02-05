# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="fs-extra contains methods that aren't included in the vanilla Node.js fs package. Such as recursive mkdir, copy, and remove."
HOMEPAGE="https://github.com/jprichardson/node-fs-extra"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/at-least-node-1.0.0
	>=dev-node/graceful-fs-4.2.4
	>=dev-node/jsonfile-6.1.0
	>=dev-node/universalify-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

