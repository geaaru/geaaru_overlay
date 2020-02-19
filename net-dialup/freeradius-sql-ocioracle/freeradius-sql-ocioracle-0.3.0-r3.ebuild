# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-dialup/freeradius/freeradius-3.0.3.ebuild,v 1.3 2014/12/28 16:14:40 titanofold Exp $

EAPI=6

FREERADIUS_MOD_TYPE="sql"
FREERADIUS_VERSION="3.0.20"

SLOT="3.0"

inherit autotools eutils git-r3

DESCRIPTION="Oracle alternative module for FreeRADIUS"
HOMEPAGE="https://github.com/geaaru/rlm_sql_ocioracle"

EGIT_REPO_URI="https://github.com/geaaru/rlm_sql_ocioracle.git"
EGIT_COMMIT="0.3.0"

KEYWORDS="~amd64"
LICENSE="GPL-2"
IUSE=""

REQUIRED_USE=""

RDEPEND="
	>=net-dialup/freeradius-${FREERADIUS_VERSION}
	sys-devel/libtool
	dev-lang/perl
	sys-libs/gdbm
	net-libs/libpcap
	sys-libs/talloc
	dev-db/ocilib
	dev-db/oracle-instantclient-basic"
DEPEND="${RDEPEND}"

inherit freeradius-modules

src_configure() {

	# fix bug #77613
	if has_version app-crypt/heimdal; then
		myconf="${myconf} --enable-heimdal-krb5"
	fi

	local oracle_version=$(best_version dev-db/oracle-instantclient-basic \
		| sed -e 's/dev-db\/oracle-instantclient-basic-//')

	einfo "Use oracle version ${oracle_version}"

	# do not try to enable static with static-libs; upstream is a
	# massacre of libtool best practices so you also have to make sure
	# to --enable-shared explicitly.
	econf \
		--enable-shared \
		--disable-static \
		--disable-ltdl-install \
		--with-system-libtool \
		--with-system-libltdl \
		--with-ascend-binary \
		--with-udpfromto \
		--with-dhcp \
		--with-iodbc-include-dir=/usr/include/iodbc \
		--with-experimental-modules \
		--with-docdir=/usr/share/doc/${PF} \
		--with-logdir=/var/log/radius \
		--with-oracle-include-dir=/usr/lib64/oracle/${oracle_version}/client/include \
		--with-oracle-lib-dir=/usr/lib64/oracle/${oracle_version}/client/lib \
		${myconf}
}

src_install() {

	freeradius-modules_src_install

	dodir /etc/raddb/mods-config/sql/main/ocioracle

	# Copy same files from oracle driver.
	insinto /etc/raddb/mods-config/sql/main/ocioracle
	doins ${S}/raddb/mods-config/sql/main/oracle/*

	insinto /etc/raddb/mods-config/sql/ippool/ocioracle
	doins ${S}/raddb/mods-config/sql/ippool/oracle/*

	insinto /etc/raddb/mods-config/sql/ippool-dhcp/ocioracle
	doins ${S}/raddb/mods-config/sql/ippool-dhcp/oracle/*
}

