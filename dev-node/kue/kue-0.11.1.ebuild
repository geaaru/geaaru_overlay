# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="Feature rich priority job queue backed by redis"
HOMEPAGE="http://automattic.github.io/kue/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/body-parser-1.15.2
	>=dev-node/express-4.14.0
	>=dev-node/jade-1.11.0
	>=dev-node/lodash-3.10.1
	>=dev-node/lodash-deep-1.6.0
	>=dev-node/nib-1.1.2
	>=dev-node/node-redis-warlock-0.1.4
	>=dev-node/redis-2.6.2
	>=dev-node/reds-0.2.5
	>=dev-node/stylus-0.52.4
	>=dev-node/yargs-3.32.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

