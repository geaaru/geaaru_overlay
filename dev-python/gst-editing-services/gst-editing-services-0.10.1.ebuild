# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/gst-python/gst-python-0.10.22-r1.ebuild,v 1.11 2013/10/22 06:23:06 ago Exp $

EAPI="5"

PYTHON_COMPAT=( python{2_6,2_7} )
#PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} )

inherit autotools eutils python-r1 virtualx

DESCRIPTION="A Python Interface to GStreamer"
HOMEPAGE="http://gstreamer.freedesktop.org/"
SRC_URI="http://gstreamer.freedesktop.org/src/${PN}/gstreamer-editing-services-${PV}.tar.bz2"

LICENSE="LGPL-2"
SLOT="1.0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc ppc64 sparc x86 ~x86-fbsd ~x86-interix ~amd64-linux ~x86-linux ~x86-solaris"
IUSE="examples test"

RDEPEND="
	dev-libs/libxml2
	>=dev-python/pygobject-2.28:2[${PYTHON_USEDEP}]
	>=media-libs/gstreamer-1.2.0:1.0
	>=media-libs/gst-plugins-base-1.2.0:1.0
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	test? (
		media-plugins/gst-plugins-ogg:1.0
		!!media-plugins/gst-plugins-ivorbis:1.0
		media-plugins/gst-plugins-vorbis:1.0
	)" # tests a "audiotestsrc ! vorbisenc ! oggmux ! fakesink" pipeline
# XXX: it looks like tests cannot be bothered with two vorbisdec implementations

src_unpack () {
	unpack ${A}
	cd ${WORKDIR}

	# Rename to gentoo PN name
	mv gstreamer-editing-services-${PV} ${PF}

	cd ${S}
}

src_prepare() {
	# Leave examples alone
	sed -e 's/\(SUBDIRS = .*\)examples/\1/' \
		-i Makefile.am Makefile.in || die

	sed \
		-e 's/AM_CONFIG_HEADER/AC_CONFIG_HEADERS/g' \
		-i configure.ac || die

	AT_M4DIR="common/m4" eautoreconf

	prepare_gst() {
		mkdir -p "${BUILD_DIR}" || die
	}
	python_foreach_impl prepare_gst
}

src_configure() {
	configure_gst() {
		ECONF_SOURCE="${S}" econf
	}
	python_foreach_impl run_in_build_dir configure_gst
}

src_compile() {
	python_foreach_impl run_in_build_dir default
}

src_test() {
	LC_ALL="C" GST_REGISTRY="${T}/registry.cache.xml" python_foreach_impl run_in_build_dir Xemake check
}

src_install() {
	python_foreach_impl run_in_build_dir default
	prune_libtool_files --modules

	dodoc AUTHORS ChangeLog NEWS README

	if use examples; then
		docinto examples
		dodoc examples/*
	fi
}

run_in_build_dir() {
	pushd "${BUILD_DIR}" > /dev/null || die
	"$@"
	popd > /dev/null
}
