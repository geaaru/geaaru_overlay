# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A pure Javascript ZooKeeper client for Node.js."
HOMEPAGE="https://github.com/alexguan/node-zookeeper-client#readme"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/async-0.2.10
	>=dev-node/underscore-1.4.4
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

