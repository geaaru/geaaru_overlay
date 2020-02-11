# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

EAPI=5

inherit autotools eutils git-r3 user

DESCRIPTION="Software for manage database scripts to support an
easy installation/development"
HOMEPAGE="https://github.com/geaaru/database-release-manager/"

EGIT_REPO_URI="https://github.com/geaaru/database-release-manager.git"
EGIT_BRANCH="master"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc +mysql oracle mongo"
REQUIRED_USE=""

DEPEND="doc? (
	>=dev-python/sphinx-1.6.3
	>=dev-python/sphinx-bootstrap-theme-0.6.0
)
"
RDEPEND=">=dev-db/sqlite-3.8.6
	app-shells/bash:=
	mysql? (
		|| (
			dev-db/mysql-connector-c:=
			dev-db/mariadb-connector-c:=
		)
	)
	oracle? (
		dev-db/oracle-instantclient-sqlplus
	)
	mongo? (
		dev-db/mongodb:=
		>=app-misc/jq-1.5
	)
"

PATCHES=()

src_prepare() {
	eautoreconf
}

src_compile() {
	emake || die 'Error on make'
	if use doc ; then
		emake docs || die 'Error on create documentation'
	fi
}

src_install() {
	default_src_install
	if use doc ; then
		dodoc -r ${S}/docs/_build/*
	fi
	dodoc README.md
}
