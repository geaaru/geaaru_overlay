# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Fast & forgiving HTML/XML/RSS parser"
HOMEPAGE="https://github.com/fb55/htmlparser2#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/domelementtype-1.3.1
	>=dev-node/domhandler-2.3.0
	>=dev-node/domutils-1.5.1
	>=dev-node/entities-1.0.0
	>=dev-node/readable-stream-1.1.14
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

