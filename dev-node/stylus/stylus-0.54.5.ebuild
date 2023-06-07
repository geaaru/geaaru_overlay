# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Robust, expressive, and feature-rich CSS superset"
HOMEPAGE="https://github.com/stylus/stylus"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/css-parse-1.7.0
	>=dev-node/debug-2.2.0
	>=dev-node/glob-7.0.6
	>=dev-node/mkdirp-0.5.1
	>=dev-node/sax-0.5.8
	>=dev-node/source-map-0.1.43
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

