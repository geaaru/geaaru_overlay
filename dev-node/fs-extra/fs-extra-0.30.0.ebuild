# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="fs-extra contains methods that aren't included in the vanilla Node.js fs package. Such as mkdir -p, cp -r, and rm -rf."
HOMEPAGE="https://github.com/jprichardson/node-fs-extra"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/graceful-fs-4.1.15
	>=dev-node/jsonfile-2.4.0
	>=dev-node/klaw-1.3.1
	>=dev-node/path-is-absolute-1.0.1
	>=dev-node/rimraf-2.6.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

