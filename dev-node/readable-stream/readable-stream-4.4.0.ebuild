# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Node.js Streams, a user-land copy of the stream library from Node.js"
HOMEPAGE="https://github.com/nodejs/readable-stream"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/abort-controller-3.0.0
	>=dev-node/buffer-6.0.3
	>=dev-node/events-3.3.0
	>=dev-node/process-0.11.10
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

