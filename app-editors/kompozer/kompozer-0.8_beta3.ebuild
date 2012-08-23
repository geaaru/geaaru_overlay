# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-editors/kompozer/kompozer-0.8_beta1.ebuild,v 1.0b 2009/10/28 09:22:52 Fenril Exp $
EAPI="2"

inherit eutils mozconfig-2 flag-o-matic toolchain-funcs mozilla-launcher makeedit multilib mozextension fdo-mime autotools

MY_P="${P/_beta3/}b3"

LANGS="da de en-US es-ES fr it nl pl ru zh-TW"
NOSHORTLANGS="zh-TW"

DESCRIPTION="A web authoring system combining web file management and WYSIWYG editing"
HOMEPAGE="http://kompozer.net/"
# Recommended using ${PN}??
SRC_URI="http://downloads.sourceforge.net/kompozer/${MY_P}-src.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-alpha -amd64 -ia64 -mips -ppc -sparc -x86"
IUSE=""

# Someone in Gentoo Sunrise IRC recommends the following be put in pkg_setup()??
#Language download package support (*.xpi)
#for X in ${LANGS} ; do
#	if [ "${X}" != "en" ] && [ "${X}" != "en-US" ]; then
#		SRC_URI="${SRC_URI}
#		linguas_${X/-/_}? ( http://kompozer.sourceforge.net/l10n/langpacks/${MY_P}/${MY_P}.${X}.xpi )"
#	fi
#	IUSE="${IUSE} linguas_${X/-/_}"
#	# english is handled internally
#	if [ "${#X}" == 5 ] && ! has ${X} ${NOSHORTLANGS}; then
#		if [ "${X}" != "en-US" ]; then
#			SRC_URI="${SRC_URI}
#				linguas_${X%%-*}? ( http://kompozer.sourceforge.net/l10n/langpacks/${MY_P}/${MY_P}.${X}.xpi )"
#		fi
#		IUSE="${IUSE} linguas_${X%%-*}"
#	fi
#done

# Only gawk should be within DEPEND, all else in RDEPEND??
DEPEND="x11-proto/printproto
sys-apps/gawk
dev-lang/perl
dev-libs/libIDL
x11-libs/libXt
>=media-libs/freetype-2.1.9-r1"
RDEPEND="${DEPEND}"

S=${WORKDIR}/mozilla

#Language support
# According to someone in Gentoo Sunrise IRC, this linguas needs cleaning up?
linguas() {

	local LANG SLANG
	for LANG in ${LINGUAS}; do
		if has ${LANG} en en_US; then
			has en ${linguas} || linguas="${linguas:+"${linguas} "}en"
			continue
		elif has ${LANG} ${LANGS//-/_}; then
			has ${LANG//_/-} ${linguas} || linguas="${linguas:+"${linguas} "}${LANG//_/-}"
			continue
		elif [[ " ${LANGS} " == *" ${LANG}-"* ]]; then
			for X in ${LANGS}; do
				if [[ "${X}" == "${LANG}-"* ]] && \
					[[ " ${NOSHORTLANGS} " != *" ${X} "* ]]; then
					has ${X} ${linguas} || linguas="${linguas:+"${linguas} "}${X}"
					continue 2
				fi
			done
		fi
		ewarn "Sorry, but ${PN} does not support the ${LANG} LINGUA"
	done

}

pkg_setup(){

	if ! built_with_use x11-libs/cairo X; then
		eerror "Cairo is not built with X useflag."
		eerror "Please add 'X' to your USE flags, and re-emerge cairo."
		die "Cairo needs X"
	fi

	if ! built_with_use --missing true x11-libs/pango X; then
		eerror "Pango is not built with X useflag."
		eerror "Please add 'X' to your USE flags, and re-emerge pango."
		die "Pango needs X"
	fi

	use moznopango && warn_mozilla_launcher_stub && warn_mozilla_launcher_stub

}

src_unpack() {

	unpack ${MY_P}-src.tar.bz2

	linguas
	for X in ${linguas}; do
		[[ ${X} != "en" ]] && xpi_unpack "${MY_P}.${X}.xpi"
	done
	if [[ ${linguas} != "" && ${linguas} != "en" ]]; then
		elog "Selected language packs (first will be default): ${linguas}"
	fi

}

src_configure() {

	cd ${S}

	mozconfig_init
	mozconfig_config

	mozconfig_annotate '' --enable-application=composer
	mozconfig_annotate '' --disable-canvas

	#Need to indicate which mozilla's application is required to compile
	#sed -i -e "1i\ac_add_options --enable-application=composer\n" .mozconfig || die "sed failed"

	#Disable canvas to prevent compilation fail (by Kazé)
	#sed -i -e "2i\ac_add_options --disable-canvas\n" .mozconfig || die "sed failed"

	#Disable freetype support to avoid incompatibility with Xft (by Dabrouch)
	sed -i "/freetype2/d" .mozconfig || die "sed failed"
	sed -i "/freetypetest/d" .mozconfig || die "sed failed"


	# Finalize and report settings
	mozconfig_final

	CPPFLAGS="${CPPFLAGS}" \
	CC="$(tc-getCC)" CXX="$(tc-getCXX)" LD="$(tc-getLD)" \
	econf || die "configure failed"

	# This removes extraneous CFLAGS from the Makefiles to reduce RAM
	# requirements while compiling
	edit_makefiles


}

src_compile() {
	# Would do in pkg_setup but that loses the export attribute, they
	# become pure shell variables.
	export MOZ_CO_PROJECT=composer

	cd {S}

	# Should the build use multiprocessing? Not enabled by default, as it tends to break
	[ "${WANT_MP}" = "true" ] && jobs=${MAKEOPTS} || jobs="-j1"
	emake ${jobs} || die "make failed"

}

src_install() {
	# Would do in pkg_setup but that loses the export attribute, they
	# become pure shell variables.
	export MOZ_CO_PROJECT=composer

	cd ${S}
	#Dirty Bugfix by unregistr3d (ignore nsModules.o):
	cd xpfe/components/
	cp Makefile.in Makefile.in_backup
	cat Makefile.in_backup | grep -v build2 > Makefile.in
	cd ../..

	make -f client.mk DESTDIR=${D} install || die "make install failed"

	cd ..

	declare MOZILLA_FIVE_HOME="/usr/local/lib/${PN}"

	#Install xpi language by default
	linguas
	for X in ${linguas}; do
		[[ ${X} != "en" ]] && xpi_install "${WORKDIR}"/"${MY_P}.${X}"
	done

	local LANG=${linguas%% *}
	if [[ -n ${LANG} && ${LANG} != "en" ]]; then
		elog "Setting default locale to ${LANG}"
		dosed -e "s:general.useragent.locale\", \"en-US\":general.useragent.locale\", \"${LANG}\":" \
			${MOZILLA_FIVE_HOME}/defaults/pref/all.js || \
			die "sed failed to change locale"
	fi

	#menu entry
	newicon "${S}"/composer/app/mozicon256.png
	newmenu "${S}"/composer/app/${PN}.desktop

	# Remove useless file to avoid package-collision (by unregistr3d) :
	rm ${D}/usr/share/aclocal/nspr.m4

}

pkg_postinst() {

	elog "This package has a very dirty bugfix!!! If you want to fill"
	elog "a Bugreport to the mainstream developers, at least be sure"
	elog "to refer to http://bugs.gentoo.org/show_bug.cgi?id=146761#c39"
	elog "Thanks"

}
