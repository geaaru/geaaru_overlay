# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="This is a sequel to [stream-combiner](https://npmjs.org/package/stream-combiner) for streams3."
HOMEPAGE="https://github.com/substack/stream-combiner2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/duplexer2-0.1.4
	>=dev-node/readable-stream-2.3.6
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

