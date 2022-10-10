# Distributed under the terms of the GNU General Public License v2

EAPI="7"

inherit desktop java-pkg-2

DESCRIPTION="Oracle SQL Developer is a graphical tool for database development"
HOMEPAGE="http://www.oracle.com/technology/products/database/sql_developer/"
SRC_URI="${P}-no-jre.zip"
RESTRICT="fetch"

LICENSE="OTN"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="mssql mysql postgres sybase"

DEPEND="mssql? ( dev-java/jtds:1.3 )
	mysql? ( dev-java/jdbc-mysql:0 )
	postgres? ( dev-java/jdbc-postgresql:0 )
	sybase? ( dev-java/jtds:1.3 )"
RDEPEND=">=virtual/jdk-1.8.0
	${DEPEND}"

S="${WORKDIR}/${PN}"

pkg_nofetch() {
	eerror "Please go to"
	eerror "	${HOMEPAGE}"
	eerror "and download"
	eerror "	Oracle SQL Developer for other platforms"
	eerror "		${SRC_URI}"
	eerror "and move it to ${DISTDIR}"
}

src_prepare() {
	default
	find ./ \( -iname "*.exe" -or -iname "*.dll" -or -iname "*.bat" \) -exec rm {} + || die
	sed -i 's|"`dirname $0`"|/opt/sqldeveloper|' sqldeveloper.sh || die

	rm -r netbeans/platform/modules/lib/i386 || die
	#rm -r modules/javafx || die

	# they both use jtds, enabling one of them also enables the other one
	if use mssql && ! use sybase; then
		einfo "You requested MSSQL support, this also enables Sybase support."
	fi
	if use sybase && ! use mssql; then
		einfo "You requested Sybase support, this also enables MSSQL support."
	fi

	if use mssql || use sybase; then
		echo "AddJavaLibFile $(java-pkg_getjars jtds-1.3)" >> sqldeveloper/bin/sqldeveloper.conf
	fi

	if use mysql; then
		echo "AddJavaLibFile $(java-pkg_getjars jdbc-mysql)" >> sqldeveloper/bin/sqldeveloper.conf
	fi

	if use postgres; then
		echo "AddJavaLibFile $(java-pkg_getjars jdbc-postgresql)" >> sqldeveloper/bin/sqldeveloper.conf || die
	fi
}

src_install() {
	insinto /opt/${PN}
	doins -r {configuration,d{ataminer,ropins},e{quinox,xternal},ide,j{avavm,d{bc,ev},lib,views},modules,netbeans,orakafka,rdbms,s{leepycat,ql{developer,j},vnkit}}
	fperms +x /opt/${PN}/netbeans/platform/modules/lib/amd64/linux/libjnidispatch-422.so

	dodir /opt/sqldeveloper/sqldeveloper/extensions/oracle.datamodeler/log
	fperms 1777 /opt/sqldeveloper/sqldeveloper/extensions/oracle.datamodeler/log

	newbin "${FILESDIR}"/${PN}-r1 ${PN}

	newicon icon.png ${PN}-32x32.png
	make_desktop_entry ${PN} "Oracle SQL Developer" ${PN}-32x32

	# This is normally called automatically by java-pkg_dojar, which
	# hasn't been used above. We need to create package.env to help the
	# launcher select the correct VM.
	java-pkg_do_write_
}

pkg_postinst() {
	# this temporary fixes FileNotFoundException with datamodeler
	# this is more like a workaround than permanent fix
	test -d /opt/sqldeveloper/sqldeveloper/extensions/oracle.datamodeler/log \
		|| mkdir /opt/sqldeveloper/sqldeveloper/extensions/oracle.datamodeler/log
	touch /opt/sqldeveloper/sqldeveloper/extensions/oracle.datamodeler/log/datamodeler.log
	chmod -R 1777 /opt/sqldeveloper/sqldeveloper/extensions/oracle.datamodeler/log/datamodeler.log

	# this fixes another datamodeler FileNotFoundException
	# also more like a workaround than permanent fix
	chmod 1777 /opt/sqldeveloper/sqldeveloper/extensions/oracle.datamodeler/types/dr_custom_scripts.xml

	# THIS IS HORRIBLE!!!
	chmod -R 1777 /opt/sqldeveloper/configuration

	echo
	einfo "If you want to use the TNS connection type you need to set up the"
	einfo "TNS_ADMIN environment variable to point to the directory your"
	einfo "tnsnames.ora resides in."
	echo
}
