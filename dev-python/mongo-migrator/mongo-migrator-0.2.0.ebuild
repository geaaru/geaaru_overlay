# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1 eutils

DESCRIPTION="Migrator tool for migrate data from Oracle to Mongo"
HOMEPAGE="https://github.com/geaaru/mongo-migrator"

SRC_URI="https://github.com/geaaru/${PN}/archive/v${PV}.tar.gz -> ${PF}.tar.gz"
RETRICT="mirror"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.12[${PYTHON_USEDEP}]
	>=dev-python/cx-oracle-5.2.1[${PYTHON_USEDEP}]
	>=dev-python/pymongo-3.4.0[${PYTHON_USEDEP}]
	"
RDEPEND="
${DEPEND}
"

