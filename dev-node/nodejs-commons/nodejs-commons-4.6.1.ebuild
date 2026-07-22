# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=7

DESCRIPTION="Node Js Commons Libraries and Utilities"
HOMEPAGE="http://www.npmjs.com/package/nodejs-commons"

LICENSE="Property of TIM"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/ajv-8.20.0
	>=dev-node/ajv-formats-3.0.1
	>=dev-node/ajv-keywords-5.1.0
	>=dev-node/async-mutex-0.5.0
	>=dev-node/axios-1.18.1
	>=dev-node/blake2b-2.1.4
	>=dev-node/chokidar-3.6.0
	>=dev-node/csv-parse-5.6.0
	>=dev-node/deepmerge-4.3.1
	>=dev-node/fs-extra-11.3.6
	>=dev-node/json5-2.2.3
	>=dev-node/koa-2.16.4
	>=dev-node/koa-body-6.0.1
	>=dev-node/koa-bodyparser-4.4.1
	>=dev-node/koa-compose-4.1.0
	>=dev-node/koa-logger-4.0.0
	>=dev-node/koa-mount-4.2.0
	>=dev-node/koa-router-14.0.0
	>=dev-node/memcache-client-1.0.5
	>=dev-node/moment-2.30.1
	>=dev-node/moment-timezone-0.5.48
	>=dev-node/mongodb-6.16.0
	>=dev-node/net-snmp-3.26.3
	>=dev-node/netmask-2.1.1
	>=dev-node/oracledb-6.10.0
	>=dev-node/path-complete-extname-1.0.0
	>=dev-node/pino-9.14.0
	>=dev-node/pino-pretty-11.3.0
	>=dev-node/prom-client-15.1.3
	>=dev-node/prometheus-api-metrics-4.0.0
	>=dev-node/prometheus-gc-stats-1.1.0
	>=dev-node/sd-notify-2.8.0
	>=dev-node/tar-7.5.20
	>=dev-node/uuid-10.0.0
	>=dev-node/yaml-2.9.0
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

