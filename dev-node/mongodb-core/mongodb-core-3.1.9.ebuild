# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Core MongoDB driver functionality, no bells and whistles and meant for integration not end applications"
HOMEPAGE="https://github.com/mongodb-js/mongodb-core"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bson-1.1.0
	>=dev-node/require_optional-1.0.1
	>=dev-node/safe-buffer-5.1.2
	>=dev-node/saslprep-1.0.2
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

