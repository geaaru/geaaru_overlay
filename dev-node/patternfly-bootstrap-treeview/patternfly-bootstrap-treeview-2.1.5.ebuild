# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Tree View for Twitter Bootstrap"
HOMEPAGE="https://github.com/patternfly/patternfly-bootstrap-treeview"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/bootstrap-3.3.7
	>=dev-node/jquery-3.2.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

