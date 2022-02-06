# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Heade$

EAPI=7
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 git-r3

DESCRIPTION="CoAPthon is a python library to the CoAP protocol compliant with the RFC."
HOMEPAGE="https://github.com/Tanganelli/CoAPthon"

EGIT_REPO_URI="https://github.com/Tanganelli/CoAPthon.git"
EGIT_COMMIT="3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc "

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	doc? (
		dev-python/sphinx
	)
"

RDEPEND="
	dev-python/futures[${PYTHON_USEDEP}]
	dev-python/bitstring[${PYTHON_USEDEP}]
"

src_prepare() {

	sed -i -e "s/'test'\, //g" setup.py

	# Remove scripts from installations
	sed -i -e "s/scripts=\['.*/scripts=[],/g" \
		-e "s/'reverse_proxy_mapping.xml']\, //g" \
		setup.py

	# Remote test directory
	rm -rf ${S}/test || die

	distutils-r1_src_prepare

}

python_compile_all() {
	use doc && emake -C docs html
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/_build/html/. )
	distutils-r1_python_install_all

	einfo "
	caopserver.py, coapserverproxy.py and others scripts
	aren't installed. If you want try Coap Server get it from
	caopthon repository. This package contains only library."

}
