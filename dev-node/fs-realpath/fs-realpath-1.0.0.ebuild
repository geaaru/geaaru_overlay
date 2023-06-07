# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Use node's fs.realpath, but fall back to the JS implementation if the native one fails"
HOMEPAGE="https://github.com/isaacs/fs.realpath#readme"

LICENSE="ISC"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="fs.realpath"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

