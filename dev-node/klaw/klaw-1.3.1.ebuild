# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="File system walker with Readable stream interface."
HOMEPAGE="https://github.com/jprichardson/node-klaw#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/graceful-fs-4.1.11
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

