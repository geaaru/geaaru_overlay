# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="The modern build of lodash’s _.template as a module."
HOMEPAGE="https://lodash.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
	>=dev-node/lodash-basecopy-3.0.1
	>=dev-node/lodash-basetostring-3.0.1
	>=dev-node/lodash-basevalues-3.0.0
	>=dev-node/lodash-isiterateecall-3.0.9
	>=dev-node/lodash-reinterpolate-3.0.0
	>=dev-node/lodash-escape-3.2.0
	>=dev-node/lodash-keys-3.1.2
	>=dev-node/lodash-restparam-3.6.1
	>=dev-node/lodash-templatesettings-3.1.1
"
RDEPEND="${DEPEND}"

NPM_PKG_NAME="lodash.template"
NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

