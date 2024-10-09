# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Feature rich priority job queue backed by redis"
HOMEPAGE="http://automattic.github.io/kue/"
NPM_GITHUB_MOD="Automattic/kue"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/body-parser-1.17.2
	>=dev-node/express-4.14.0
	>=dev-node/lodash-4.17.4
	>=dev-node/nib-1.1.2
	>=dev-node/node-redis-warlock-0.2.0
	>=dev-node/pug-2.0.0_rc2
	>=dev-node/redis-2.6.5
	>=dev-node/reds-0.2.5
	>=dev-node/stylus-0.54.5
	>=dev-node/yargs-4.8.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

inherit npmv1

