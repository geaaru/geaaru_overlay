# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

MY_V=${PV/_rc/-rc}

DESCRIPTION="A library to create readable 'multipart/form-data' streams. Can be used to submit forms and file uploads to other web applications."
HOMEPAGE="https://github.com/form-data/form-data#readme"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_V}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/asynckit-0.4.0
	>=dev-node/combined-stream-1.0.7
	>=dev-node/mime-types-2.1.20
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

