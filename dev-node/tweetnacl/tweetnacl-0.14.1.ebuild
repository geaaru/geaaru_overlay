# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Port of TweetNaCl cryptographic library to JavaScript"
HOMEPAGE="https://www.npmjs.com/package/tweetnacl"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/package"

NPM_NO_DEPS=1

inherit npmv1

