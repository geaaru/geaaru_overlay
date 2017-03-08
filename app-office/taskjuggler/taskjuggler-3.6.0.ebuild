# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

USE_RUBY="ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_RECIPE_TEST="none"
RUBY_FAKEGEM_RECIPE_DOC="none"
RUBY_FAKEGEM_GEMSPEC="taskjuggler.gemspec"
RUBY_FAKEGEM_EXTRAINSTALL="benchmarks data examples manual"

inherit ruby-fakegem

MY_PN="TaskJuggler"

DESCRIPTION="Project Management beyond Gantt Chart Drawing"
SRC_URI="https://github.com/${PN}/${MY_PN}/archive/release-${PV}.tar.gz -> ${P}.tar.gz"
HOMEPAGE="http://taskjuggler.org/"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
SLOT="0"

DEPEND="
	dev-ruby/mail
	dev-ruby/term-ansicolor
"
RDEPEND="${DEPEND}"

each_ruby_prepare() {
	cd ${MY_PN}-release-${PV} || die

	mv * ../ || die
}
