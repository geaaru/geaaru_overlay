# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-text/robodoc/robodoc-4.99.36.ebuild,v 1.1 2009/06/09 22:35:06 ssuominen Exp $

EAPI=2

inherit autotools

DESCRIPTION="Automating Software Documentation"
HOMEPAGE="http://www.xs4all.nl/~rfsber/Robo/robodoc.html"
SRC_URI="http://www.xs4all.nl/~rfsber/Robo/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-util/ctags-5.3.1"
DEPEND="${RDEPEND}"

src_configure() {

	sed -i -e 's/man_MANS.*/man_MANS =/' ${WORKDIR}/${PF}/Docs/makefile.am
	sed -i -e 's/man1_MANS.*/man1_MANS =/' ${WORKDIR}/${PF}/Docs/makefile.am

	eautoreconf
	eautomake

	econf \
		--docdir=/usr/share/doc/${PF} \
		--disable-dependency-tracking
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"

	insinto /usr/share/${PN}
	doins Contributions/* || die "doins failed"

	insinto /usr/share/man/man1
	doins Docs/*.1 || die "doins relative to man1 failed"

	rm -f "${D}"/usr/share/doc/${PF}/{COPYING,INSTALL}
	prepalldocs

	if use examples; then
		insinto /usr/share/${PN}
		doins -r Examples/PerlExample || die "doins failed"
	fi
}
