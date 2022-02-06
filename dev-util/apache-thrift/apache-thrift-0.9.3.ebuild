# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7
PYTHON_COMPAT=( python2_7 python3_4 python3_5 )
# It's seems that is there both configure anche cmake files
# but is there a problem with linking of pthread library (use -pthreads instead of
# -pthread) and configure phase go in error.
#inherit cmake-utils
inherit python-r1  eutils flag-o-matic java-pkg-2 java-ant-2

DESCRIPTION="Software framework for scalable cross-language services development"
HOMEPAGE="http://thrift.apache.org"
#SRC_URI="mirror://apache/${PN}/${PV}/${P}.tar.gz"
SRC_URI="https://github.com/apache/thrift/archive/${PV}.tar.gz -> thrift-${PV}.tar.gz"
RESTRICT="mirror"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+pic gnu-ld +cpp +libevent +zlib qt5 +c_glib csharp erlang +python
perl php php_extension ruby haskell go nodejs dart haxe zlib lua test static-libs libressl"
# Temporary disable java support. I need fix it.
#IUSE="+java"
#	java? (
#		dev-java/ant-ivy:=
#		dev-java/commons-lang:=
#		dev-java/slf4j-api:=
#		dev-java/maven-bin
#	)
DEPEND="
	virtual/yacc
	!libressl? ( dev-libs/openssl:0= )
	libressl? ( dev-libs/libressl:0= )
	dev-libs/boost:0=
	cpp? (
		zlib? ( sys-libs/zlib )
		libevent? ( dev-libs/libevent )
		qt5? ( dev-qt/qtcore:5 dev-qt/qtnetwork:5 )
	)
	csharp? ( >=dev-lang/mono-1.2.4 )
	erlang? ( >=dev-lang/erlang-12.0.0 )
	python? (
		dev-lang/python
	)
	perl? (
		dev-lang/perl
		dev-perl/Bit-Vector
		dev-perl/Class-Accessor
	)
	php? ( dev-lang/php )
	php_extension? ( dev-lang/php )
	haskell? ( dev-haskell/haskell-platform )
	haxe? ( dev-lang/haxe )
	nodejs? ( net-libs/nodejs )
	ruby? ( dev-lang/ruby )
	go? ( dev-lang/go )
	lua? ( dev-lang/lua )
	test? (
		static-libs? ( dev-libs/boost:0=[static-libs] )
	)
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/thrift-${PV}"

src_configure() {
	./bootstrap.sh

		# This flags either result in compilation errors
	# or byzantine runtime behaviour.
	filter-flags -fwhole-program -fwhopr

	# Disable qt4. I use only qt5.
	#local mycmakeargs+=(
	#	$(use_with java) \
	econf \
		--disable-bootthreads \
		--without-dart \
		--without-d \
		--with-boost \
		--without-java \
		--without-qt4 \
		$(use_with pic) \
		$(use_with gnu-ld) \
		$(use_with cpp) \
		$(use_with libevent) \
		$(use_with zlib) \
		$(use_with qt5) \
		$(use_with c_glib) \
		$(use_with csharp) \
		$(use_with erlang) \
		$(use_with python) \
		$(use_with perl) \
		$(use_with php) \
		$(use_with php_extension) \
		$(use_with ruby) \
		$(use_with haskell) \
		$(use_with go) \
		$(use_with haxe) \
		$(use_with nodejs) \
		$(use_with lua) \
		$(use_enable test tests) \
		$(use_enable test coverage) \
		$(use_enable static-libs static)
	#)

	#cmake-utils_src_configure
}

src_compile() {
	emake || die "emake compilation failed"
}

src_install() {
#	cmake-utils_src_install
    emake DESTDIR="${D}" install || die "emake install failed"

	# Thrift 0.9.3 doesn't install python libs
	install_python() {
		cd "${S}/lib/py/" || die
		${EPYTHON} "${S}/lib/py/setup.py" install --root "${D}"

		python_optimize
	}
	if use python; then
		python_foreach_impl install_python
	fi
}
