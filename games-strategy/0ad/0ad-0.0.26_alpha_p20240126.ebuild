# Distributed under the terms of the GNU General Public License v2

EAPI=7

WX_GTK_VER="3.0-gtk3"

PYTHON_COMPAT=( python3+ )
inherit destkop flag-o-matic eutils wxwidgets toolchain-funcs gnome2-utils python-any-r1

MY_P=0ad-${PV/_/-}
DESCRIPTION="A free, real-time strategy game"
HOMEPAGE="https://play0ad.com/"
#SRC_URI="http://releases.wildfiregames.com/${MY_P}-unix-build.tar.xz"
LAST_TAG="0.0.26_alpha"
SRC_URI="https://github.com/0ad/0ad/tarball/1dfaca89e60239decd8bcd0ce783d3a6fa23e5f1 -> ${PN}-${LAST_TAG}_p20240126.tar.gz"

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
)

post_src_unpack() {
	mv 0ad-* ${S}
}

pkg_setup() {
	use editor && setup-wxwidgets
	python-any-r1_pkg_setup
}

src_prepare() {
	default

	# https://bugs.gentoo.org/859244
	filter-lto

	# SpiderMonkey's configure no longer recognises --build for
	# the build tuple
	sed -i -e "/--build/d" libraries/source/spidermonkey/build.sh || die

	rm binaries/data/tools/fontbuilder/fonts/*.txt
}

src_configure() {
	local myconf=(
		--minimal-flags
		$(usex nvtt "" "--without-nvtt")
		$(usex pch "" "--without-pch")
		$(usex test "" "--without-tests")
		$(usex editor "--atlas" "")
		$(usex lobby "" "--without-lobby")
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
		SHELL="/bin/bash" \
		JOBS="-j$(makeopts_jobs)" \
		./build.sh \
	|| die "Failed to build bundled SpiderMonkey"

	cd "${S}" || die

	# build 0ad
	elog "Building 0ad"
	JOBS="-j$(makeopts_jobs)" emake -C build/workspace/gcc verbose=1

	if use nvtt ; then
		# Without nvtt the icons generation fail.

		# source/lib/sysdep/os/linux/ldbg.cpp:debug_SetThreadName() tries to open /proc/self/task/${TID}/comm for writing.
		addpredict /proc/self/task

		# Based on source/tools/dist/build-archives.sh used by source/tools/dist/build.sh.
		local archivebuild_input archivebuild_output mod_name
		for archivebuild_input in binaries/data/mods/[A-Za-z0-9]*; do
			mod_name="${archivebuild_input##*/}"
			archivebuild_output="archives/${mod_name}"

			mkdir -p "${archivebuild_output}" || die

			einfo pyrogenesis -archivebuild="${archivebuild_input}" -archivebuild-output="${archivebuild_output}/${mod_name}.zip"
			LD_LIBRARY_PATH="binaries/system" binaries/system/pyrogenesis \
				-archivebuild="${archivebuild_input}" \
				-archivebuild-output="${archivebuild_output}/${mod_name}.zip" \
			|| die "Failed to build assets"

			if [[ -f "${archivebuild_input}/mod.json" ]]; then
				cp "${archivebuild_input}/mod.json" "${archivebuild_output}" || die
			fi

			rm -r "${archivebuild_input}" || die
			mv "${archivebuild_output}" "${archivebuild_input}" || die
		done

		# Based on source/tools/dist/build-unix-win32.sh used by source/tools/dist/build.sh.
		rm binaries/data/config/dev.cfg || die
		rm -r binaries/data/mods/_test.* || die

	fi
}

src_test() {
	cd binaries/system || die
	./test -libdir "${S}/binaries/system" || die "test phase failed"
}

src_install() {
	newbin binaries/system/pyrogenesis 0ad
	use editor && newbin binaries/system/ActorEditor 0ad-ActorEditor

	insinto /usr/share/${PN}
	#doins -r binaries/data/l10n
	#doins -r binaries/data/{l10n,config,mods,tools}
	doins -r binaries/data/*

	# Install bundled SpiderMonkey and collada
	exeinto /usr/$(get_libdir)/${PN}
	doexe binaries/system/{libCollada,libmozjs91-ps-release}.so

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

