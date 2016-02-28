# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A node.js module for parsing form data, especially file uploads."
HOMEPAGE="https://www.npmjs.com/package/formidable"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

S="${WORKDIR}/node-${PF}"

DEPEND=""
RDEPEND="${DEPEND}"

NPM_GITHUP_MOD="felixge/node-formidable"

inherit npmv1


