# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="wrapper around sd_notify for using systemd as a node process manager"
HOMEPAGE="https://github.com/systemd/node-sd-notify#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bindings-1.5.0
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
build/Release
"
NPM_GYP_PKG=1

S="${WORKDIR}/package"

inherit npmv1

