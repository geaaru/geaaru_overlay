# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit python-r1

DESCRIPTION="Namespace package declaration for jaraco"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	${PYTHON_DEPS}
"
DEPEND="${PYTHON_DEPS}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_unpack() {
	mkdir -p "${S}"/jaraco || die
	cat > "${S}"/jaraco/__init__.py <<-EOF || die
		__import__('pkg_resources').declare_namespace(__name__)
	EOF
}

src_install() {
	python_foreach_impl python_domodule jaraco
}
