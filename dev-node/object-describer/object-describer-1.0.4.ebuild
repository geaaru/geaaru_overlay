# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Provides an extendable describer for kubernetes resources. Includes an angular directive for rendering an instance of a describer."
HOMEPAGE="https://github.com/kubernetes-ui/describer#readme"
NPM_GITHUP_MOD="kubernetes-ui/${PN}"

SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
dist
views
fixtures
"

inherit npmv1

