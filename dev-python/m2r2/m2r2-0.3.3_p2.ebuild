# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Markdown and reStructuredText in a single file."
HOMEPAGE="https://github.com/crossnox/m2r2 https://pypi.org/project/m2r2/"
SRC_URI="https://files.pythonhosted.org/packages/ee/09/fe73f1739c727ba119cbd67c43b65316af56e55f5501ba601c79dd7ba080/m2r2-0.3.3.post2.tar.gz -> m2r2-0.3.3.post2.tar.gz"

DEPEND=""
RDEPEND="
	<=dev-python/mistune-0.8.4
	dev-python/mistune[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/m2r2-0.3.3.post2"