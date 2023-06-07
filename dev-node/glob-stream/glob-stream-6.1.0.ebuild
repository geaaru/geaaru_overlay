# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A Readable Stream interface over node-glob."
HOMEPAGE="https://github.com/gulpjs/glob-stream#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/extend-3.0.1
	>=dev-node/glob-7.1.2
	>=dev-node/glob-parent-3.1.0
	>=dev-node/is-negated-glob-1.0.0
	>=dev-node/ordered-read-streams-1.0.1
	>=dev-node/pumpify-1.3.5
	>=dev-node/readable-stream-2.3.3
	>=dev-node/remove-trailing-separator-1.0.2
	>=dev-node/to-absolute-glob-2.0.1
	>=dev-node/unique-stream-2.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

