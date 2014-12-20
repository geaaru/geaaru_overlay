# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5

inherit autotools eutils git-2 multilib user

DESCRIPTION="Software for manage database scripts to support an
easy installation/development"
HOMEPAGE="https://github.com/geaaru/database-release-manager/"
EGIT_REPO_URI="https://github.com/geaaru/database-release-manager.git"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc mysql +oracle +sqlite"
REQUIRED_USE="|| ( mysql oracle )"

DEPEND=""

RDEPEND="
		>=dev-db/sqlite-3.8.6
		app-shells/bash
		mysql? (
			virtual/mysql
		)
		oracle? (
			dev-db/oracle-instantclient-sqlplus
		)
		doc? (
			app-text/robodoc
		)
"

PATCHES=(
)

src_prepare() {
	eautoreconf
}

src_compile() {
	local myconf="--with-configfile-path=/etc/dbrm.conf"

#	use doc && myconf="${myconf} --docdir=/usr/share/doc/${PN}/
	econf ${myconf}
}

# TODO: create robodoc documentation and copy documentation
