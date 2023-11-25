# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="An asynchronous networking framework written in Python"
HOMEPAGE=" https://pypi.org/project/Twisted/"
SRC_URI="https://files.pythonhosted.org/packages/6e/d3/077ece8f12cd82419bd68bb34cf4538c4df5bb9202835e7a18358223e537/twisted-23.10.0.tar.gz -> twisted-23.10.0.tar.gz"

DEPEND="
	http2? (
		<=dev-python/h2-5.0.0[${PYTHON_USEDEP}]
		>=dev-python/h2-4.0.0[${PYTHON_USEDEP}]
		>=dev-python/priority-1.1.0[${PYTHON_USEDEP}]
		<dev-python/priority-2.0[${PYTHON_USEDEP}]
	)
	$(python_gen_cond_dep 'dev-python/hatch-fancy-pypi-readme[${PYTHON_USEDEP}] dev-python/hatch-vcs[${PYTHON_USEDEP}] dev-python/hatch-vcs[${PYTHON_USEDEP}] dev-python/incremental[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	conch? ( dev-python/appdirs[${PYTHON_USEDEP}] dev-python/bcrypt[${PYTHON_USEDEP}] dev-python/cryptography[${PYTHON_USEDEP}] )
	serial? ( dev-python/pyserial[${PYTHON_USEDEP}] )
	crypt? ( dev-python/idna[${PYTHON_USEDEP}] dev-python/pyopenssl[${PYTHON_USEDEP}] dev-python/service_identity[${PYTHON_USEDEP}] )"
IUSE="conch crypt http2 serial"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/twisted-23.10.0"