# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} )

inherit python-r1 git-r3

DESCRIPTION="A set of base plugins for Molecule"
HOMEPAGE="http://www.sabayon.org"

EGIT_REPO_URI="https://github.com/geaaru/molecule-plugins.git"
EGIT_BRANCH="master"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

DEPEND="
	>=dev-util/molecule-core-1.0.1
	!<dev-util/molecule-1"
RDEPEND="${DEPEND}
	net-misc/rsync
	sys-fs/squashfs-tools
	sys-process/lsof
	virtual/cdrtools
	${PYTHON_DEPS}"

src_install() {
	emake DESTDIR="${D}" LIBDIR="/usr/lib" \
		PREFIX="/usr" SYSCONFDIR="/etc" install
}
