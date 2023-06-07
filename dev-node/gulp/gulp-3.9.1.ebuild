# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The streaming build system"
HOMEPAGE="http://gulpjs.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/archy-1.0.0
	>=dev-node/chalk-1.1.3
	>=dev-node/deprecated-0.0.1
	>=dev-node/gulp-util-3.0.8
	>=dev-node/interpret-1.0.1
	>=dev-node/liftoff-2.3.0
	>=dev-node/minimist-1.2.0
	>=dev-node/orchestrator-0.3.8
	>=dev-node/pretty-hrtime-1.0.3
	>=dev-node/semver-4.3.6
	>=dev-node/tildify-1.2.0
	>=dev-node/v8flags-2.0.11
	>=dev-node/vinyl-fs-0.3.14
"
RDEPEND="${DEPEND}"

NPM_BINS="
	gulp.js => gulp
"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

src_install () {
	npmv1_src_install

	# Install bash completation file
	into /usr/share/bash-completion/
	newins completion/bash gulp
}

