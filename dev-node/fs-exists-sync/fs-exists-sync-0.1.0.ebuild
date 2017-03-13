# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Drop-in replacement for fs.existsSync with zero dependencies. Other libs I found either have crucial differences from fs.existsSync, or unnecessary dependencies. See README.md for more info."
HOMEPAGE="https://github.com/jonschlinkert/fs-exists-sync"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

