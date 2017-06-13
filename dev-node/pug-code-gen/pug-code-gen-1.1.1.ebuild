# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Default code-generator for pug.  It generates HTML via a JavaScript template function."
HOMEPAGE="https://github.com/pugjs/pug-code-gen#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/constantinople-3.1.0
	>=dev-node/doctypes-1.1.0
	>=dev-node/js-stringify-1.0.2
	>=dev-node/pug-attrs-2.0.2
	>=dev-node/pug-error-1.3.2
	>=dev-node/pug-runtime-2.0.3
	>=dev-node/void-elements-2.0.1
	>=dev-node/with-5.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

