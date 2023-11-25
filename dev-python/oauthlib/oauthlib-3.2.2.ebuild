# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A generic, spec-compliant, thorough implementation of the OAuth request-signing logic"
HOMEPAGE="https://github.com/oauthlib/oauthlib https://pypi.org/project/oauthlib/"
SRC_URI="https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz -> oauthlib-3.2.2.tar.gz"

DEPEND=""
RDEPEND="$(python_gen_cond_dep 'dev-python/blinker[${PYTHON_USEDEP}] dev-python/cryptography[${PYTHON_USEDEP}] dev-python/pyjwt[${PYTHON_USEDEP}]' -3)"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/oauthlib-3.2.2"