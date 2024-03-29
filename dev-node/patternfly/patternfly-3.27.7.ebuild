# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="This reference implementation of PatternFly is based on [Bootstrap v3](http://getbootstrap.com/).  Think of PatternFly as a 'skinned' version of Bootstrap with additional components and customizations."
HOMEPAGE="https://github.com/patternfly/patternfly"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bootstrap-3.3.7
	>=dev-node/bootstrap-datepicker-1.6.4
	>=dev-node/bootstrap-select-1.12.4
	>=dev-node/bootstrap-switch-3.3.4
	>=dev-node/bootstrap-touchspin-3.1.1
	>=dev-node/c3-0.4.17
	>=dev-node/d3-3.5.17
	>=dev-node/datatables-net-1.10.15
	>=dev-node/datatables-net-colreorder-1.3.3
	>=dev-node/datatables-net-colreorder-bs-1.3.3
	>=dev-node/datatables-net-select-1.2.2
	>=dev-node/drmonty-datatables-colvis-1.1.2
	>=dev-node/eonasdan-bootstrap-datetimepicker-4.17.47
	>=dev-node/font-awesome-4.7.0
	>=dev-node/google-code-prettify-1.0.5
	>=dev-node/jquery-3.2.1
	>=dev-node/jquery-match-height-0.7.2
	>=dev-node/moment-2.14.1
	>=dev-node/moment-timezone-0.4.1
	>=dev-node/patternfly-bootstrap-combobox-1.1.7
	>=dev-node/patternfly-bootstrap-treeview-2.1.5
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

