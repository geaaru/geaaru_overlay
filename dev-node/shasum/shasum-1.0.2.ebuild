# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Single function that return the sha1sum. Installing this is just a little bit quicker than reading the crypto documentation."
HOMEPAGE="https://github.com/dominictarr/shasum"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/json-stable-stringify-0.0.1
	>=dev-node/sha-js-2.4.11
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

