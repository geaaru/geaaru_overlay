# Distributed under the terms of the GNU General Public License v2

EAPI=6
CMAKE_BUILD_TYPE=Release
PYTHON_COMPAT=( python3+ )

inherit cmake-utils eutils memsaver python-any-r1 systemd user flag-o-matic

DESCRIPTION="The multi-purpose multi-model NoSQL DB"
HOMEPAGE="http://www.arangodb.com/"
SRC_URI="
https://github.com/arangodb/arangodb/archive/refs/tags/v3.11.5.tar.gz -> arangodb-3.11.5.tar.gz
https://github.com/arangodb/abseil-cpp/archive/4e312c3a15f61c62afa543c4ed06128073074f4e.tar.gz -> arangodb-abseil-cpp-3.11.5.tar.gz
https://github.com/fmtlib/fmt/archive/a33701196adfad74917046096bf5a2aa0ab0bb50.tar.gz -> arangodb-fmt-3.11.5.tar.gz
https://github.com/arangodb/googletest/archive/97d3bfa1199c45cb393ee1b0f77df794f833dd51.tar.gz -> arangodb-gtest-3.11.5.tar.gz
https://github.com/arangodb/immer/archive/a814bcd5929dc6730f5d713a870fcb1e23af0bf2.tar.gz -> arangodb-immer-3.11.5.tar.gz
https://github.com/iresearch-toolkit/iresearch/archive/43f6ba10a7c9d43e8091bf9f49f16341dc1b2c04.tar.gz -> arangodb-iresearch-3.11.5.tar.gz
https://github.com/arangodb/rocksdb/archive/cd5ef1d93fa1a1ffe33d6e28aad014fedebee2a2.tar.gz -> arangodb-rocksdb-3.11.5.tar.gz
https://github.com/arangodb/rta-makedata/archive/be56994fba73b576ec5a34c79c76ddbf7d79570b.tar.gz -> arangodb-rta-makedata-3.11.5.tar.gz
https://github.com/arangodb/velocypack/archive/b7250d23849b64ed5653126a7d8a2253f3ac4510.tar.gz -> arangodb-velocypack-3.11.5.tar.gz
"

LICENSE="Apache-2.0"
SLOT="3"
KEYWORDS=""
IUSE="jemalloc +memsaver +system-boost systemd"

DEPEND=">=sys-libs/readline-6.2_p1
	>=dev-libs/openssl-1.1.0[-bindist]
	system-boost? ( dev-libs/boost )
	jemalloc? ( dev-libs/jemalloc )
	${PYTHON_DEPEND}"
RDEPEND="${DEPEND}"
THIRDPARTY_MODULES="
	abseil-cpp
	fmt
	gtest
	immer
	iresearch
	rocksdb
	rta-makedata
	velocypack
"


pkg_setup() {
	python-any-r1_pkg_setup
	ebegin "Ensuring arangodb3 user and group exist"
	enewgroup arangodb3
	enewuser arangodb3 -1 -1 -1 arangodb3
	eend $?
}

src_prepare() {
	for m in ${THIRDPARTY_MODULES} ; do
		einfo "Preparing 3rdParty module ${m}..."
		# Removing empty directory
		rm -r ${S}/3rdParty/${m} || true
		if [ "${m}" = "gtest" ] ; then
			mv ${WORKDIR}/googletest-* ${S}/3rdParty/${m}
		else
			mv ${WORKDIR}/${m}-* ${S}/3rdParty/${m}
		fi
	done

	cmake-utils_src_prepare

	sed -i -e 's?@PKGDATADIR@?/usr/share/arangodb3?' \
		-e 's|= arangodb$|= arangodb3|g' \
		etc/arangodb3/arangod.conf.in || die 'sed arangod.conf failed'
	sed -i 's?@PKGDATADIR@?/usr/share/arangodb3?' etc/arangodb3/arangosh.conf.in || die 'sed arangosh.conf failed'

	sed -i -e 's: arangodb : arangodb3 :g' Installation/logrotate.d/arangod.systemd || die 'sed logrotate file failed'
}

src_configure() {

	export CFLAGS="${CFLAGS} -msse4.1 -mssse3"
	export CXXFLAGS="${CXXFLAGS} -msse4.1 -mssse3"

	local mycmakeargs=(
		#-DVERBOSE=On
		-DUSE_OPTIMIZE_FOR_ARCHITECTURE=Off
		-DARANGODB_USE_GOOGLE_TESTS=0
		-DCMAKE_BUILD_TYPE=RelWithDebInfo
		-DCMAKE_C_FLAGS="${CFLAGS}"
		-DCMAKE_CXX_FLAGS="${CXXFLAGS}"
		#-DETCDIR=/etc
		#-DVARDIR=/var
		-DUSE_SSE4_2=false
		-DCMAKE_INSTALL_DOCDIR=/usr/share/arangodb3
		-DCMAKE_INSTALL_SYSCONFDIR=/etc
		-DCMAKE_INSTALL_PREFIX:PATH=/usr
		-DCMAKE_INSTALL_LOCALSTATEDIR=/var
		-DCMAKE_SKIP_RPATH:BOOL=ON
		-DLOGROTATE_GROUP=arangodb3
		-DOPENSSL_ROOT_DIR=/usr/include/openssl
	)
	if use system-boost ; then
		mycmakeargs+=( -DUSE_BOOST_SYSTEM_LIBS=ON )
	else
		mycmakeargs+=( -DUSE_BOOST_SYSTEM_LIBS=OFF )
	fi

	if use jemalloc ; then
		mycmakeargs+=( -DUSE_JEMALLOC=ON )
	else
		mycmakeargs+=( -DUSE_JEMALLOC=OFF )
	fi

	memsaver_src_configure
	cmake-utils_src_configure
}

src_install() {
	diropts -m0750 -o arangodb3 -g arangodb3
	dodir /var/log/arangodb3
	keepdir /var/log/arangodb3
	dodir /var/lib/arangodb3
	keepdir /var/lib/arangodb3
	dodir /var/lib/arangodb3-apps
	keepdir /var/lib/arangodb3-apps
	diropts
	fowners -R arangodb3:arangodb3 /var/log/arangodb3
	fowners -R arangodb3:arangodb3 /var/lib/arangodb3
	fowners -R arangodb3:arangodb3 /var/lib/arangodb3-apps

	cmake-utils_src_install

	# I use our systemd service
	rm "${D}/usr/lib/systemd/system/arangodb3.service"

	newinitd "${FILESDIR}"/arangodb3.initd arangodb3

	if use systemd ; then
		systemd_dounit "${FILESDIR}"/arangodb3.service
	fi
}
