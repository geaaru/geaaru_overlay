# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="tar-stream is a streaming tar parser and generator and nothing else. It is streams2 and operates purely using streams which means you can easily extract/parse tarballs without ever hitting the file system."
HOMEPAGE="https://github.com/mafintosh/tar-stream"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bl-1.0.3
	>=dev-node/buffer-alloc-1.2.0
	>=dev-node/end-of-stream-1.4.1
	>=dev-node/fs-constants-1.0.0
	>=dev-node/readable-stream-2.3.3
	>=dev-node/to-buffer-1.1.1
	>=dev-node/xtend-4.0.2
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

