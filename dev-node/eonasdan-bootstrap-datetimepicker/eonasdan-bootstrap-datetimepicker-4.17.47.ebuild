# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="A date/time picker component designed to work with Bootstrap 3 and Momentjs. For usage, installation and demos see Project Site on GitHub"
HOMEPAGE="http://eonasdan.github.io/bootstrap-datetimepicker/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bootstrap-3.3.7
	>=dev-node/jquery-3.2.1
	>=dev-node/moment-2.19.1
	>=dev-node/moment-timezone-0.4.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

