# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python{3_6,3_7} )
inherit distutils-r1

DESCRIPTION="A clean responsive theme for the MkDocs static documentation site generator"
HOMEPAGE="https://github.com/chrissimpkins/cinder"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/mkdocs-1[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}"

src_prepare() {
	sed -e 's:cinder = cinder:cinder = mkdocs_cinder:g' \
		-i "${S}"/setup.py

	# Avoid conflict with sys-cluster/cinder package
	mv "${S}"/cinder "${S}"/mkdocs_cinder

	sed -e 's:cinder/:mkdocs_cinder/:g' -i \
		"${S}"/mkdocs_cinder.egg-info/SOURCES.txt

	sed -e 's:cinder = cinder:cinder = mkdocs_cinder:g' -i \
		"${S}"/mkdocs_cinder.egg-info/entry_points.txt

	distutils-r1_src_prepare
}
