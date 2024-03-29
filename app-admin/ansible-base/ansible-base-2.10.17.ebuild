# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS=bdepend

inherit distutils-r1

DESCRIPTION="Model-driven deployment, config management, and command execution framework"
HOMEPAGE="https://www.ansible.com/"

MY_PN="${PN/-base/-core}"
MY_P="${MY_PN}-${PV}"
#SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
SRC_URI="https://files.pythonhosted.org/packages/fe/56/b18bf0167aa6e2ab195d0c2736992a3a9aeca1ddbefebee554226d211267/${P}.tar.gz"
KEYWORDS="*"

LICENSE="GPL-3"
SLOT="0"
IUSE="test"
RESTRICT="test"

RDEPEND="
	dev-python/paramiko[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/httplib2[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/netaddr[${PYTHON_USEDEP}]
	dev-python/pexpect[${PYTHON_USEDEP}]
	>=dev-python/resolvelib-0.5.3[${PYTHON_USEDEP}]
	<dev-python/resolvelib-0.6.0[${PYTHON_USEDEP}]
	net-misc/sshpass
	virtual/ssh
"
DEPEND="
	>=dev-python/packaging-16.6[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		dev-python/bcrypt[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
		>=dev-python/mock-1.0.1[${PYTHON_USEDEP}]
		dev-python/passlib[${PYTHON_USEDEP}]
		dev-python/coverage[${PYTHON_USEDEP}]
		dev-vcs/git
	)"

python_compile() {
	export ANSIBLE_SKIP_CONFLICT_CHECK=1
	distutils-r1_python_compile
}

python_test() {
	nosetests -d -w test/units -v --with-coverage --cover-package=ansible --cover-branches || die
}
