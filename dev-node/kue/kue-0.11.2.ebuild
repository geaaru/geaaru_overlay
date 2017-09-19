# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Feature rich priority job queue backed by redis"
HOMEPAGE="http://automattic.github.io/kue/"
NPM_GITHUP_MOD="Automattic/kue"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/body-parser-1.15.2
	>=dev-node/express-4.14.0
	>=dev-node/lodash-4.16.2
	>=dev-node/nib-1.1.2
	>=dev-node/node-redis-warlock-0.2.0
	>=dev-node/pug-2.0.0_beta6
	>=dev-node/redis-2.6.2
	>=dev-node/stylus-0.54.5
	>=dev-node/yargs-4.8.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

inherit npmv1

