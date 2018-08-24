# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Make a glob pattern absolute, ensuring that negative globs and patterns with trailing slashes are correctly handled."
HOMEPAGE="https://github.com/jonschlinkert/to-absolute-glob"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/is-absolute-1.0.0
	>=dev-node/is-negated-glob-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

