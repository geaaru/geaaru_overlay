# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module systemd user

EGO_SKIP_TIDY=1
EGO_SUM=(
	"connectrpc.com/connect v1.16.1"
	"connectrpc.com/connect v1.16.1/go.mod"
	"github.com/alessio/shellescape v1.4.2"
	"github.com/alessio/shellescape v1.4.2/go.mod"
	"github.com/containrrr/shoutrrr v0.8.0"
	"github.com/containrrr/shoutrrr v0.8.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/djherbis/buffer v1.1.0/go.mod"
	"github.com/djherbis/buffer v1.2.0"
	"github.com/djherbis/buffer v1.2.0/go.mod"
	"github.com/djherbis/nio/v3 v3.0.1"
	"github.com/djherbis/nio/v3 v3.0.1/go.mod"
	"github.com/fatih/color v1.16.0"
	"github.com/fatih/color v1.16.0/go.mod"
	"github.com/gitploy-io/cronexpr v0.2.2"
	"github.com/gitploy-io/cronexpr v0.2.2/go.mod"
	"github.com/go-logr/logr v1.2.3"
	"github.com/go-logr/logr v1.2.3/go.mod"
	"github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572"
	"github.com/go-task/slim-sprig v0.0.0-20230315185526-52ccab3ef572/go.mod"
	"github.com/golang-jwt/jwt/v5 v5.2.1"
	"github.com/golang-jwt/jwt/v5 v5.2.1/go.mod"
	"github.com/golang/protobuf v1.5.4"
	"github.com/golang/protobuf v1.5.4/go.mod"
	"github.com/google/go-cmp v0.6.0"
	"github.com/google/go-cmp v0.6.0/go.mod"
	"github.com/google/pprof v0.0.0-20210407192527-94a9f03dee38"
	"github.com/google/pprof v0.0.0-20210407192527-94a9f03dee38/go.mod"
	"github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510"
	"github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510/go.mod"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/errwrap v1.1.0"
	"github.com/hashicorp/errwrap v1.1.0/go.mod"
	"github.com/hashicorp/go-multierror v1.1.1"
	"github.com/hashicorp/go-multierror v1.1.1/go.mod"
	"github.com/hectane/go-acl v0.0.0-20230122075934-ca0b05cb1adb"
	"github.com/hectane/go-acl v0.0.0-20230122075934-ca0b05cb1adb/go.mod"
	"github.com/jarcoal/httpmock v1.3.0"
	"github.com/jarcoal/httpmock v1.3.0/go.mod"
	"github.com/mattn/go-colorable v0.1.13"
	"github.com/mattn/go-colorable v0.1.13/go.mod"
	"github.com/mattn/go-isatty v0.0.16/go.mod"
	"github.com/mattn/go-isatty v0.0.20"
	"github.com/mattn/go-isatty v0.0.20/go.mod"
	"github.com/natefinch/atomic v1.0.1"
	"github.com/natefinch/atomic v1.0.1/go.mod"
	"github.com/onsi/ginkgo/v2 v2.9.2"
	"github.com/onsi/ginkgo/v2 v2.9.2/go.mod"
	"github.com/onsi/gomega v1.27.6"
	"github.com/onsi/gomega v1.27.6/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/stretchr/testify v1.8.4"
	"github.com/stretchr/testify v1.8.4/go.mod"
	"go.etcd.io/bbolt v1.3.9"
	"go.etcd.io/bbolt v1.3.9/go.mod"
	"go.uber.org/goleak v1.3.0"
	"go.uber.org/goleak v1.3.0/go.mod"
	"go.uber.org/multierr v1.11.0"
	"go.uber.org/multierr v1.11.0/go.mod"
	"go.uber.org/zap v1.27.0"
	"go.uber.org/zap v1.27.0/go.mod"
	"golang.org/x/crypto v0.22.0"
	"golang.org/x/crypto v0.22.0/go.mod"
	"golang.org/x/exp v0.0.0-20240416160154-fe59bbe5cc7f"
	"golang.org/x/exp v0.0.0-20240416160154-fe59bbe5cc7f/go.mod"
	"golang.org/x/net v0.24.0"
	"golang.org/x/net v0.24.0/go.mod"
	"golang.org/x/sync v0.7.0"
	"golang.org/x/sync v0.7.0/go.mod"
	"golang.org/x/sys v0.0.0-20190529164535-6a60838ec259/go.mod"
	"golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab/go.mod"
	"golang.org/x/sys v0.6.0/go.mod"
	"golang.org/x/sys v0.19.0"
	"golang.org/x/sys v0.19.0/go.mod"
	"golang.org/x/sys v0.20.0"
	"golang.org/x/sys v0.20.0/go.mod"
	"golang.org/x/text v0.14.0"
	"golang.org/x/text v0.14.0/go.mod"
	"golang.org/x/text v0.15.0"
	"golang.org/x/text v0.15.0/go.mod"
	"golang.org/x/tools v0.20.0"
	"golang.org/x/tools v0.20.0/go.mod"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240429193739-8cf5692501f6"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240429193739-8cf5692501f6/go.mod"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240429193739-8cf5692501f6"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240429193739-8cf5692501f6/go.mod"
	"google.golang.org/grpc v1.63.2"
	"google.golang.org/grpc v1.63.2/go.mod"
	"google.golang.org/protobuf v1.34.0"
	"google.golang.org/protobuf v1.34.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
)

DESCRIPTION="Backrest is a web UI and orchestrator for restic backup"
HOMEPAGE="https://github.com/garethgeorge/backrest"
SRC_URI="https://github.com/garethgeorge/backrest/tarball/73c8612eee1c2b92bb3d3ef0070d7e9e312f2469 -> backrest-1.0.0-73c8612.tar.gz
https://direct.funtoo.org/c4/48/39/c4483906f2590056b0c90bc3b8bcfa37e07f07cbeeca6ed904d8b2483ef7381dd9b0e2d776b4ab71a85d0e8b7496e9198b5b6f82eb22eb73ebeffa1e69b0cdcf -> backrest-1.0.0-funtoo-go-bundle-e5b31ce53ec396ca5a95719ee97f2b12e026daa42bd5ffc881adf668fbdaaff6b13503b6d562602f315ab565ac2c973cf52ad55bc51dd0d4ba62ec3e713a0b45.tar.gz"
# Uses npm to download packages
RESTRICT="network-sandbox"
LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="*"
IUSE="systemd"

RDEPEND="app-backup/restic"
DEPEND="${RDEPEND}
	net-libs/nodejs
"

pkg_setup() {
	ebegin "Ensuring backrest group and user exist"
	enewgroup backrest
	enewuser backrest -1 -1 /var/lib/backrest backrest
	eend $?
}

post_src_unpack() {
	mv ${WORKDIR}/garethgeorge-backrest-* ${S}
}

src_compile() {
	GOOS=linux BACKREST_BUILD_VERSION=1.0.0 \
		go generate ./...

	CGO_ENABLED=0 \
		go build \
		-asmflags "-trimpath=${S}" \
		-gcflags "-trimpath=${S}" \
		-o backrest .
}

src_install() {
	dobin backrest
	diropts -m0750 -o backrest -g backrest
	dodir /var/lib/backrest/
	fowners backrest:backrest /var/lib/backrest
	keepdir /var/lib/backrest
	if use systemd ; then
		systemd_newunit "${FILESDIR}"/backrest.service backrest.service || die
	else
		newinitd "${FILESDIR}"/backrest.initd backrest
	fi
	newconfd "${FILESDIR}"/backrest.confd backrest
}