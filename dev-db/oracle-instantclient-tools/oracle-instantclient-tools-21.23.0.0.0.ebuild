# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
QA_PREBUILT="
usr/lib*/oracle/21.23.0.0.0/client/lib*/lib*
usr/lib*/oracle/21.23.0.0.0/client/bin/sqlplus
"

inherit eutils

DESCRIPTION=""
SRC_URI="https://download.oracle.com/otn_software/linux/instantclient/2123000/instantclient-tools-linux.x64-21.23.0.0.0dbru.zip -> instantclient-tools-linux.x64-21.23.0.0.0dbru.zip"
LICENSE="OTN"
SLOT="0"
KEYWORDS="*"
DOCS=(
	TOOLS_LICENSE
	TOOLS_README
)
RDEPEND=">=dev-db/oracle-instantclient-basic-21.23.0.0.0
	
"
DEPEND="app-arch/unzip
	
"
S="${WORKDIR}/instantclient_21_23/"

src_install() {
	local bins=(
		exp
		expdp
		imp
		impdp
		sqlldr
		wrc
	)
	local oracle_home=usr/$(get_libdir)/oracle/oracle-instantclient-tools/client
	into /"${oracle_home}"
	dolib.so libnfsodm21.so libnfsodm21.so
	for b in ${bins[@]} ; do
		einfo "Add binary ${b}..."
		dobin ${b}
		pax-mark -c "${ED}${oracle_home}"/bin/${b}
		dosym /"${oracle_home}"/bin/${b} /usr/bin/${b}
	done
}


# vim: filetype=ebuild
