# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Model-driven deployment, config management, and command execution framework"
HOMEPAGE="https://www.ansible.com/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="*"
RESTRICT="test"

RDEPEND="app-admin/ansible-base"

python_compile() {
	local -x ANSIBLE_SKIP_CONFLICT_CHECK=1
	distutils-r1_python_compile
}
python_install() {
	local -x ANSIBLE_SKIP_CONFLICT_CHECK=1
	distutils-r1_python_install
}
