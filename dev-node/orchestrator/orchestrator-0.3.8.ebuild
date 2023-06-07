# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A module for sequencing and executing tasks and dependencies in maximum concurrency"
HOMEPAGE="https://github.com/robrich/orchestrator"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/end-of-stream-0.1.5
	>=dev-node/sequencify-0.0.7
	>=dev-node/stream-consume-0.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

