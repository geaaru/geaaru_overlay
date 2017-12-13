# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Simplified HTTP request client."
HOMEPAGE="https://github.com/request/request#readme"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/aws-sign2-0.7.0
	>=dev-node/aws4-1.6.0
	>=dev-node/caseless-0.12.0
	>=dev-node/combined-stream-1.0.5
	>=dev-node/extend-3.0.1
	>=dev-node/forever-agent-0.6.1
	>=dev-node/form-data-2.3.1
	>=dev-node/har-validator-5.0.3
	>=dev-node/hawk-6.0.2
	>=dev-node/http-signature-1.2.0
	>=dev-node/is-typedarray-1.0.0
	>=dev-node/isstream-0.1.2
	>=dev-node/json-stringify-safe-5.0.1
	>=dev-node/mime-types-2.1.17
	>=dev-node/oauth-sign-0.8.2
	>=dev-node/performance-now-2.1.0
	>=dev-node/qs-6.5.1
	>=dev-node/safe-buffer-5.1.1
	>=dev-node/stringstream-0.0.5
	>=dev-node/tough-cookie-2.3.3
	>=dev-node/tunnel-agent-0.6.0
	>=dev-node/uuid-3.1.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

