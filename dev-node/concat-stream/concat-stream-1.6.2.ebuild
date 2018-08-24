# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="writable stream that concatenates strings or binary data and calls a callback with the result"
HOMEPAGE="https://github.com/maxogden/concat-stream#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/buffer-from-1.1.1
	>=dev-node/inherits-2.0.3
	>=dev-node/readable-stream-2.3.6
	>=dev-node/typedarray-0.0.6
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

