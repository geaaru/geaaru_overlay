# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Expand system variables Unix style"
HOMEPAGE="https://github.com/sayanarijit/expandvars"
SRC_URI="https://files.pythonhosted.org/packages/2b/a5/46d1f58edcae1d632fafdfee313e378240e002ae45d26502bac938bd8751/expandvars-0.12.0.tar.gz -> expandvars-0.12.0.tar.gz
"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/expandvars-0.12.0"
