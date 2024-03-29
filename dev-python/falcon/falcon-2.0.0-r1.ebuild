# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# Python 2.6 is supported, but depends on ordereddict, which has been in
# improvise for months and is a minimal package. If needed
# please let me know. PyPy also works
#PYTHON_COMPAT=( python3_7, python3_8 )
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="A supersonic micro-framework for building cloud APIs"
HOMEPAGE="http://falconframework.org/ https://pypi.org/project/falcon/"
SRC_URI="https://github.com/racker/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="+cython test"
RESTRICT="!test? ( test )"

RDEPEND="dev-python/six[${PYTHON_USEDEP}]
	dev-python/python-mimeparse[${PYTHON_USEDEP}]
	cython? ( dev-python/cython[${PYTHON_USEDEP}] )"

DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/cython[${PYTHON_USEDEP}]
		dev-python/nose[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/pytest-runner[${PYTHON_USEDEP}]
		dev-python/testtools[${PYTHON_USEDEP}] )"

python_test() {
	nosetests || die "Testing failed with ${EPYTHON}"
}

src_prepare() {
	if ! use cython; then
		sed -i -e 's/if with_cython:/if False:/' setup.py \
			|| die 'sed failed.'
	fi

	# fix tests installation : potential file collision
	sed -e 's@^where = tests@where = falcon/tests@g' -i setup.cfg || die
	mv tests falcon/

	eapply_user
}
