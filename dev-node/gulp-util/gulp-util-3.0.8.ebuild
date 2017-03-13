# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Utility functions for gulp plugins"
HOMEPAGE="https://github.com/gulpjs/gulp-util#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/array-differ-1.0.0
	>=dev-node/array-uniq-1.0.3
	>=dev-node/beeper-1.1.1
	>=dev-node/chalk-1.1.3
	>=dev-node/dateformat-2.0.0
	>=dev-node/fancy-log-1.3.0
	>=dev-node/gulplog-1.0.0
	>=dev-node/has-gulplog-0.1.0
	>=dev-node/lodash-reescape-3.0.0
	>=dev-node/lodash-reevaluate-3.0.0
	>=dev-node/lodash-reinterpolate-3.0.0
	>=dev-node/lodash-template-3.6.2
	>=dev-node/minimist-1.2.0
	>=dev-node/multipipe-0.1.2
	>=dev-node/object-assign-3.0.0
	>=dev-node/replace-ext-0.0.1
	>=dev-node/through2-2.0.3
	>=dev-node/vinyl-0.5.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

