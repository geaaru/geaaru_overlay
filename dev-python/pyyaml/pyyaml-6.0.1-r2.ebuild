# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="YAML parser and emitter for Python"
HOMEPAGE="https://pyyaml.org/wiki/PyYAML
https://pypi.org/project/PyYAML/
https://github.com/yaml/pyyaml
"
SRC_URI="https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz -> PyYAML-6.0.1.tar.gz"

DEPEND="
	libyaml? ( dev-libs/libyaml )
	dev-python/setuptools[${PYTHON_USEDEP}]
	libyaml? ( dev-python/cython[${PYTHON_USEDEP}] )"
RDEPEND="
	libyaml? ( dev-libs/libyaml )
	libyaml? ( dev-python/cython[${PYTHON_USEDEP}] )"
IUSE="+libyaml examples"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
PATCHES=(
	"$FILESDIR"/pyyaml-6.0.1-cython3.patch
)
S="${WORKDIR}/PyYAML-6.0.1"

python_configure_all() {
	DISTUTILS_ARGS=( $(use_with libyaml) )
}

python_install_all() {
	distutils-r1_python_install_all
	if use examples; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}
	fi
}
