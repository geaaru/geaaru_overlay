# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Offers getProxyForUrl to get the proxy URL for a URL, respecting the *_PROXY (e.g. HTTP_PROXY) and NO_PROXY environment variables."
HOMEPAGE="https://github.com/Rob--W/proxy-from-env#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

