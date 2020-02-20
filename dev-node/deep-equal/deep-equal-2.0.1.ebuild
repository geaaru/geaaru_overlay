# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="node's assert.deepEqual algorithm"
HOMEPAGE="https://github.com/inspect-js/node-deep-equal#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/es-abstract-1.17.4
	>=dev-node/es-get-iterator-1.1.0
	>=dev-node/is-arguments-1.0.4
	>=dev-node/is-date-object-1.0.2
	>=dev-node/is-regex-1.0.5
	>=dev-node/isarray-2.0.5
	>=dev-node/object-is-1.0.2
	>=dev-node/object-keys-1.1.1
	>=dev-node/regexp-prototype-flags-1.3.0
	>=dev-node/side-channel-1.0.2
	>=dev-node/which-boxed-primitive-1.0.1
	>=dev-node/which-collection-1.0.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

