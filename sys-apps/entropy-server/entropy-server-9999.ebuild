# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit eutils python-single-r1 bash-completion-r1 git-r3

DESCRIPTION="Entropy Package Manager server-side tools"
HOMEPAGE="http://www.sabayon.org"
LICENSE="GPL-2"

#EGIT_REPO_URI="https://github.com/Sabayon/entropy.git"
EGIT_REPO_URI="https://github.com/geaaru/entropy.git"
EGIT_BRANCH="fix_ask_eit_inject"

SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="+matter"

S="${WORKDIR}/${P}/server"

RDEPEND="sys-apps/entropy[${PYTHON_USEDEP}]
	matter? ( app-admin/matter[entropy] )
	${PYTHON_DEPS}
	"
DEPEND="app-text/asciidoc"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare() {
	default
	python_fix_shebang "${S}"
}

src_install() {
	emake DESTDIR="${D}" install
	newbashcomp "${S}/eit-completion.bash" eit
	python_optimize "${D}/usr/lib/entropy/server"
}
