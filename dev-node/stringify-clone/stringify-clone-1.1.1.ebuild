# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Wrapper for fast object cloning using JSON.parse & JSON.stringify"
HOMEPAGE="https://github.com/ahmadnassri/stringify-clone"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_DIRS="
	src
"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

