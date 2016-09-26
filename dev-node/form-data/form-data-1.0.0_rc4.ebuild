# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

MY_V=${PV/_rc/-rc}

DESCRIPTION="A library to create readable 'multipart/form-data' streams. Can be used to submit forms and file uploads to other web applications."
HOMEPAGE="https://github.com/form-data/form-data#readme"
SRC_URI="http://registry.npmjs.org/${PN}/-/${PN}-${MY_V}.tgz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/async-1.5.2
	>=dev-node/combined-stream-1.0.5
	>=dev-node/mime-types-2.1.11
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

