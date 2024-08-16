# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
PYTHON_REQ_USE="threads(+)"

FORTRAN_NEEDED=lapack
DISTUTILS_EXT=1
MESON_SETUP=1
DISTUTILS_USE_PEP517=meson-python

inherit distutils-r1 flag-o-matic fortran-2 multiprocessing toolchain-funcs

DESCRIPTION="Fast array and numerical python library"
HOMEPAGE="https://numpy.org/"
SRC_URI="https://files.pythonhosted.org/packages/1c/8a/0db635b225d2aa2984e405dc14bd2b0c324a0c312ea1bc9d283f2b83b038/numpy-2.0.1.tar.gz -> numpy-2.0.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="lapack"

RDEPEND="
	lapack? (
		virtual/cblas
		virtual/lapack
	)
"
BDEPEND="
	${RDEPEND}
	app-arch/unzip
	>=dev-python/cython-3.0.0[${PYTHON_USEDEP}]
	lapack? ( virtual/pkgconfig )
"

python_prepare_all() {
	# bug #922457
	filter-lto
	# https://github.com/numpy/numpy/issues/25004
	append-flags -fno-strict-aliasing

	distutils-r1_python_prepare_all
}

python_configure_all() {
	# It seems that -lcblas -lblas is not injected. It's inject only -llapack
	export LDFLAGS="-lcblas -lblas"
	DISTUTILS_ARGS=(
		--pkg-config-path "${PKG_CONFIG_PATH}${PKG_CONFIG_PATH:+:}${EPREFIX}/usr/share/pkgconfig"
		-Db_pch=false
		-Dwerror=false
		-Dallow-noblas=$(usex !lapack true false)
		-Dblas=$(usev lapack cblas)
		-Dlapack=$(usev lapack lapack)
	)
}

python_install_all() {
	local DOCS=( LICENSE.txt README.md THANKS.txt )

	distutils-r1_python_install_all
}

# vim: filetype=ebuild