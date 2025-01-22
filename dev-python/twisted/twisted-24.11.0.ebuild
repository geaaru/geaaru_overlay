# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="An asynchronous networking framework written in Python"
HOMEPAGE="None https://pypi.org/project/Twisted/"
SRC_URI="https://files.pythonhosted.org/packages/77/1c/e07af0df31229250ab58a943077e4adbd5e227d9f2ac826920416b3e5fa2/twisted-24.11.0.tar.gz -> twisted-24.11.0.tar.gz"

DEPEND="
	http2? (
		<=dev-python/h2-5.0.0[${PYTHON_USEDEP}]
		>=dev-python/h2-4.0.0[${PYTHON_USEDEP}]
		>=dev-python/priority-1.1.0[${PYTHON_USEDEP}]
		<dev-python/priority-2.0[${PYTHON_USEDEP}]
	)
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	dev-python/incremental[${PYTHON_USEDEP}]
	dev-python/hatch-fancy-pypi-readme[${PYTHON_USEDEP}]"
RDEPEND="
	serial? ( dev-python/pyserial[${PYTHON_USEDEP}] )
	dev-python/zope-interface[${PYTHON_USEDEP}]
	dev-python/constantly[${PYTHON_USEDEP}]
	dev-python/automat[${PYTHON_USEDEP}]
	dev-python/hyperlink[${PYTHON_USEDEP}]
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	conch? ( dev-python/appdirs[${PYTHON_USEDEP}] dev-python/bcrypt[${PYTHON_USEDEP}] dev-python/cryptography[${PYTHON_USEDEP}] )
	crypt? ( dev-python/idna[${PYTHON_USEDEP}] dev-python/pyopenssl[${PYTHON_USEDEP}] dev-python/service_identity[${PYTHON_USEDEP}] )"
IUSE="conch crypt http2 serial"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/twisted-24.11.0"