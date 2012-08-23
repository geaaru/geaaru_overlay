# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Nonofficial ebuild by Ycarus. For new version look here : http://gentoo.zugaina.org/
# This ebuild is a modification of an ebuild in http://bugs.gentoo.org/

inherit eutils

MY_P="MUTE_fileSharing-${PV}_UnixSource"

DESCRIPTION="MUTE File Sharing is a peer-to-peer network that provides easy search-and-download functionality while also protecting your privacy."
DESCRIPTION_FR="MUTE est un reseau p2p securise simple d'utilisation."
SRC_URI="mirror://sourceforge/mute-net/${MY_P}.tar.gz"
RESTRICT="nomirror"
HOMEPAGE="http://mute-net.sourceforge.net/"

SLOT="0"
KEYWORDS="~x86"
LICENSE="GPL-2"
IUSE="gtk"
DEPEND="gtk? ( >=x11-libs/wxGTK-2.4.2 )"

S=${WORKDIR}/${MY_P}

src_unpack() {
    unpack ${A}
    cd ${S}/MUTE
    cp ${FILESDIR}/muteconf-gentoo ./configure
    einfo "Downloading hosts IP from http://www.crimsonreport.com/mute-net/..."
    wget -q -O - "http://www.crimsonreport.com/cgi-bin/mute.cgi?ViewIp" | \
    sed s/\<br\>// | grep -v Number > ${S}/seedHosts.ini
}

src_compile() {
    cd MUTE
    chmod u+x ./configure
    ./configure
    cd crypto
    make libcrypto.a
    cd ../layers/messageRouting
    make libmuteMessageRouter.a
    cd ../../otherApps/fileSharing
    make libmuteFileShare.a
    
    # WxWindow interface
    if use gtk; then
	cd userInterface/wxWindows
	make
	cd  build
	chmod u+x ./makeDistributions
	./makeDistributions latest CustomUnix
	cp -r unix/MUTE ../../../../../../MUTE_GUI_fileSharing
	rm -r unix
	rm -r windows
	cd ../../
    fi
    cd ..
    # Console interface
    cd userInterface/textBased
    make
    cd  build
    chmod u+x ./makeDistributions
    ./makeDistributions latest CustomUnix
    cp -r unix/MUTE ../../../../../../MUTE_text_fileSharing
    rm -r unix
    rm -r windows
    cd ../../../../../../
}

src_install() {
    if use gtk; then	
	cp MUTE/otherApps/fileSharing/userInterface/languages/* MUTE_GUI_fileSharing/languages/
	dodir /usr/share/mute /usr/bin
        cp -r MUTE_GUI_fileSharing/* ${D}/usr/share/mute/
	cat << EOF > ${D}/usr/bin/MUTE_gui
#!/bin/sh
cd /usr/share/mute
./fileSharingMUTE
EOF
	chmod go+rx ${D}/usr/bin/MUTE_gui
    fi
    dodir /usr/share/mute /usr/bin
    cp -r MUTE_text_fileSharing/* ${D}/usr/share/mute/
    insinto /usr/share/mute/settings
    doins ${S}/seedHosts.ini
	cat << EOF > ${D}/usr/bin/MUTE_text
#!/bin/sh
cd /usr/share/mute
./textFileSharingMUTE
EOF
    chmod go+rx ${D}/usr/bin/MUTE_text

}

pkg_postinst() {
    einfo "Use MUTE_gui or MUTE_text to run mute."
}