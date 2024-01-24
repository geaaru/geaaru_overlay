# Distributed under the terms of the GNU General Public License v2

EAPI=7

WX_GTK_VER="3.0-gtk3"

PYTHON_COMPAT=( python3+ )
inherit eutils wxwidgets toolchain-funcs gnome2-utils python-any-r1

MY_P=0ad-${PV/_/-}
DESCRIPTION="A free, real-time strategy game"
HOMEPAGE="https://play0ad.com/"
SRC_URI="http://releases.wildfiregames.com/${MY_P}-unix-build.tar.xz"

LICENSE="BitstreamVera CC-BY-SA-3.0 GPL-2 LGPL-2.1 LPPL-1.3c MIT ZLIB"
SLOT="0"
KEYWORDS="*"
IUSE="editor +lobby nvtt pch test"
RESTRICT="test"

RDEPEND="
	dev-libs/boost:=
	dev-libs/icu:=
	dev-libs/libfmt:0=
	dev-libs/libsodium
	dev-libs/libxml2
	dev-libs/nspr
	~games-strategy/0ad-data-${PV}
	media-libs/libpng:0
	media-libs/libsdl2[X,opengl,video]
	media-libs/libvorbis
	media-libs/openal
	net-libs/enet:1.3
	net-libs/miniupnpc:=
	net-misc/curl
	sys-libs/zlib
	virtual/jpeg:0
	virtual/opengl
	x11-libs/libX11
	x11-libs/libXcursor
	editor? ( x11-libs/wxGTK:${WX_GTK_VER}[X,opengl] )
	lobby? ( net-libs/gloox )"
DEPEND="${RDEPEND}
	${PYTHON_DEPS}
	>=dev-util/premake-5.0.0_alpha12:5
	virtual/pkgconfig
	virtual/rust
	test? ( dev-lang/perl )"

S="${WORKDIR}/${MY_P}"

# Premake adds '-s' to some LDFLAGS. Simply sed'ing it out leads to
# build and/or startup issues.
QA_PRESTRIPPED="/usr/lib64/0ad/libCollada.so /usr/bin/0ad"

PATCHES=(
	"${FILESDIR}"/${PN}-0.0.24b_alpha-respect-tc.patch
	"${FILESDIR}"/${PN}-0.0.25b_alpha-fix-setuptools.patch
	# https://code.wildfiregames.com/D4997
	"${FILESDIR}"/${P}-add-missing-cstdint-include.patch
)

pkg_setup() {
	use editor && setup-wxwidgets
	python-any-r1_pkg_setup
}

src_configure() {
	local myconf=(
		--with-system-nvtt
		--with-system-miniupnpc
		--minimal-flags
		$(usex nvtt "" "--without-nvtt")
		$(usex pch "" "--without-pch")
		$(usex test "" "--without-tests")
		$(usex editor "--atlas" "")
		$(usex lobby "" "--without-lobby")
		--collada
		--bindir="/usr/bin"
		--libdir="/usr/$(get_libdir)"/${PN}
		--datadir="/usr/share/${PN}"
		)

	tc-export AR CC CXX RANLIB

	local mypremakeargs=(
		--outpath="../workspace/gcc"
		--os=linux
		--verbose
	)

	cd "${S}/build/premake" || die "Could not enter premake directory"

	/usr/bin/premake5 "${mypremakeargs[@]}" "${myconf[@]}" gmake2 \
		|| die "Premake failed"
}

src_compile() {
	# Build 3rd party fcollada
	einfo "Building bundled fcollada"
	emake -C libraries/source/fcollada/src

	# Build bundled NVTT
	# nvtt is abandoned upstream and 0ad has forked it and added fixes.
	# Use their copy. bug #768930
	if use nvtt ; then
		cd libraries/source/nvtt || die
		elog "Building bundled NVTT"
		JOBS="-j$(makeopts_jobs)" ./build.sh || die "Failed to build bundled NVTT"
		cd "${S}" || die
	fi

	# build bundled and patched spidermonkey
	cd libraries/source/spidermonkey || die
	elog "Building bundled SpiderMonkey (bug #768840)"
	XARGS="${EPREFIX}/usr/bin/xargs" \
		JOBS="-j$(makeopts_jobs)" \
		./build.sh \
	|| die "Failed to build bundled SpiderMonkey"

	cd "${S}" || die

	# build 0ad
	elog "Building 0ad"
	JOBS="-j$(makeopts_jobs)" emake -C build/workspace/gcc verbose=1
}

src_test() {
	cd binaries/system || die
	./test -libdir "${S}/binaries/system" || die "test phase failed"
}

src_install() {
	newbin binaries/system/pyrogenesis 0ad
	use editor && newbin binaries/system/ActorEditor 0ad-ActorEditor

	insinto /usr/share/${PN}
	doins -r binaries/data/l10n

	# Install bundled SpiderMonkey and collada
	exeinto /usr/$(get_libdir)/${PN}
	doexe binaries/system/{libCollada,libmozjs78-ps-release}.so

	use nvtt && doexe binaries/system/{libnvtt,libnvcore,libnvimage,libnvmath}.so
	use editor && doexe binaries/system/libAtlasUI.so

	dodoc binaries/system/readme.txt
	doicon -s 128 build/resources/${PN}.png
	make_desktop_entry ${PN}
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
