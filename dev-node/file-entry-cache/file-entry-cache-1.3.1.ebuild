# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Super simple cache for file metadata, useful for process that work o a given series of files and that only need to repeat the job on the changed ones since the previous run of the process"
HOMEPAGE="https://github.com/royriojas/file-entry-cache#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/flat-cache-1.3.4
	>=dev-node/object-assign-4.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

