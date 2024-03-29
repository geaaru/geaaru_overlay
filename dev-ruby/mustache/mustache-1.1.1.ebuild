# Distributed under the terms of the GNU General Public License v2

EAPI=7

USE_RUBY="ruby24 ruby25 ruby26 ruby30 ruby31"

RUBY_FAKEGEM_TASK_TEST=""

RUBY_FAKEGEM_TASK_DOC="man:build"
RUBY_FAKEGEM_EXTRADOC="README.md"

inherit multilib ruby-fakegem

DESCRIPTION="Mustache is a framework-agnostic way to render logic-free views"
HOMEPAGE="https://mustache.github.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

ruby_add_bdepend "doc? ( app-text/ronn )"

all_ruby_prepare() {
	# Fix for renamed .ron files
	sed -i -e 's:\.ronn:.ron:' Rakefile || die

	sed -i -e '/simplecov/,/^end/ s:^:#:' test/helper.rb || die
}

each_ruby_test() {
	${RUBY} -Ilib:. -e "Dir['test/*.rb'].each{|f| require f}" || die
}

all_ruby_install() {
	all_fakegem_install

	doman man/mustache.1 man/mustache.5
}
