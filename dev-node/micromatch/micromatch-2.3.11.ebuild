# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Glob matching for javascript/node.js. A drop-in replacement and faster alternative to minimatch and multimatch."
HOMEPAGE="https://github.com/jonschlinkert/micromatch"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/arr-diff-2.0.0
	>=dev-node/array-unique-0.2.1
	>=dev-node/braces-1.8.5
	>=dev-node/expand-brackets-0.1.5
	>=dev-node/extglob-0.3.2
	>=dev-node/filename-regex-2.0.0
	>=dev-node/is-extglob-1.0.0
	>=dev-node/is-glob-2.0.1
	>=dev-node/kind-of-3.0.4
	>=dev-node/normalize-path-2.0.1
	>=dev-node/object-omit-2.0.1
	>=dev-node/parse-glob-3.0.4
	>=dev-node/regex-cache-0.4.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

