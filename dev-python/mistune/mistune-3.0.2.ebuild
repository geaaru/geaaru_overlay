# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="A sane and fast Markdown parser with useful plugins and renderers"
HOMEPAGE=" https://pypi.org/project/mistune/"
SRC_URI="https://files.pythonhosted.org/packages/ef/c8/f0173fe3bf85fd891aee2e7bcd8207dfe26c2c683d727c5a6cc3aec7b628/mistune-3.0.2.tar.gz -> mistune-3.0.2.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/mistune-3.0.2"