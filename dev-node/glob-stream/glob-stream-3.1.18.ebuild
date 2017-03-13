# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="File system globs as a stream"
HOMEPAGE="http://github.com/wearefractal/glob-stream"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/glob-4.5.3
	>=dev-node/glob2base-0.0.12
	>=dev-node/minimatch-2.0.10
	>=dev-node/ordered-read-streams-0.1.0
	>=dev-node/through2-0.6.5
	>=dev-node/unique-stream-1.0.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

