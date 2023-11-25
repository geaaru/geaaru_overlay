# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A pure-Python implementation of the HTTP/2 priority tree"
HOMEPAGE="https://github.com/python-hyper/priority/ https://pypi.org/project/priority/"
SRC_URI="https://files.pythonhosted.org/packages/ba/96/7d0b024087062418dfe02a68cd6b195399266ac002fb517aad94cc93e076/priority-1.3.0.tar.gz -> priority-1.3.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/priority-1.3.0"