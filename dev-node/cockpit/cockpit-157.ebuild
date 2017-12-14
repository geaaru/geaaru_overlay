# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Cockpit isn't a Node package, these are devel time deps, not needed to build tarball either"
HOMEPAGE="http://www.npmjs.com/package/cockpit"
SRC_URI="https://github.com/${PN}-project/${PN}/releases/download/${PV}/${P}.tar.xz"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/angular-1.3.20
	>=dev-node/angular-bootstrap-npm-0.13.4
	>=dev-node/angular-gettext-2.3.10
	>=dev-node/angular-route-1.3.20
	>=dev-node/bootstrap-3.3.7
	>=dev-node/bootstrap-datepicker-1.4.1
	>=dev-node/c3-0.4.18
	>=dev-node/d3-3.5.17
	>=dev-node/jquery-2.2.4
	>=dev-node/jquery-flot-0.8.3
	>=dev-node/kubernetes-container-terminal-1.0.3
	>=dev-node/kubernetes-object-describer-1.1.4
	>=dev-node/kubernetes-topology-graph-0.0.24
	>=dev-node/moment-2.19.2
	>=dev-node/mustache-2.2.1
	>=dev-node/noVNC-0.6.2
	>=dev-node/object-describer-1.0.4
	>=dev-node/patternfly-3.27.7
	>=dev-node/patternfly-bootstrap-combobox-1.1.7
	>=dev-node/qunit-tap-1.5.1
	>=dev-node/qunitjs-1.23.1
	>=dev-node/react-lite-0.15.39
	>=dev-node/redux-3.7.2
	>=dev-node/registry-image-widgets-0.0.16
	>=dev-node/requirejs-2.1.22
	>=dev-node/term-js-cockpit-0.0.10
"
RDEPEND="sys-auth/polkit:=
	>=dev-libs/glib-2.37.4
	sys-libs/pam:=
	app-crypt/mit-krb5:=
	sys-apps/systemd:=
	dev-util/intltool:=
${DEPEND}"

NPM_NO_DEPS=1
NPM_PKG_DIRS="
containers
dist
pkg
src
tools
"

inherit npmv1

src_configure () {

	local myconf="--disable-pcp"

	econf ${myconf} || die
}

