# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Async http client/server framework (asyncio)"
HOMEPAGE="https://github.com/aio-libs/aiohttp https://pypi.org/project/aiohttp/"
SRC_URI="https://files.pythonhosted.org/packages/04/a4/e3679773ea7eb5b37a2c998e25b017cc5349edf6ba2739d1f32855cfb11b/aiohttp-3.9.5.tar.gz -> aiohttp-3.9.5.tar.gz"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	>dev-python/async_timeout-3[${PYTHON_USEDEP}]
	>dev-python/attrs-17.3.0[${PYTHON_USEDEP}]
	>dev-python/multidict-4.5.0[${PYTHON_USEDEP}]
	>dev-python/yarl-1[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/aiosignal[${PYTHON_USEDEP}]
	dev-python/aiodns[${PYTHON_USEDEP}]
	dev-python/charset_normalizer[${PYTHON_USEDEP}]
	dev-python/frozenlist[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/aiohttp-3.9.5"

src_prepare() {
	default
	rm ${S}/examples/__init__.py

	# Drop runtime dep to asynctest used for tests
	sed -e '/^\tasynctest.*/d' -i ${S}/setup.cfg
}
