# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1 git-r3

DESCRIPTION="Python RADIUS tools"
HOMEPAGE="https://pypi.python.org/pypi/pyrad"

EGIT_REPO_URI="https://github.com/geaaru/pyrad.git"
EGIT_BRANCH="master"
EGIT_COMMIT="7c1ff50703a40172b186d724d517a5e2705d00dd"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"

RDEPEND="dev-python/netaddr[${PYTHON_USEDEP}]
		dev-python/six[${PYTHON_USEDEP}]"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/pbr-0.6[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}]
			>=dev-python/mock-1.0[${PYTHON_USEDEP}]
			>=dev-python/mox-0.5.3[${PYTHON_USEDEP}]
			>=dev-python/subunit-0.0.18[${PYTHON_USEDEP}]
			>=dev-python/testrepository-0.0.18[${PYTHON_USEDEP}]
			>=dev-python/testscenarios-0.4[${PYTHON_USEDEP}]
			>=dev-python/testtools-0.9.34[${PYTHON_USEDEP}] )
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
${RDEPEND}"
