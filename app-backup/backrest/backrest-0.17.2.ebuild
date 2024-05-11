# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit go-module bash-completion-r1

EGO_SKIP_TIDY=1
EGO_SUM=(
	"connectrpc.com/connect v1.16.0"
	"connectrpc.com/connect v1.16.0/go.mod"
	"github.com/alessio/shellescape v1.4.2"
	"github.com/alessio/shellescape v1.4.2/go.mod"
	"github.com/containrrr/shoutrrr v0.8.0"
	"github.com/containrrr/shoutrrr v0.8.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
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
	"golang.org/x/crypto v0.21.0"
	"golang.org/x/crypto v0.21.0/go.mod"
	"golang.org/x/crypto v0.22.0"
	"golang.org/x/crypto v0.22.0/go.mod"
	"golang.org/x/net v0.22.0"
	"golang.org/x/net v0.22.0/go.mod"
	"golang.org/x/net v0.24.0"
	"golang.org/x/net v0.24.0/go.mod"
	"golang.org/x/sync v0.6.0"
	"golang.org/x/sync v0.6.0/go.mod"
	"golang.org/x/sync v0.7.0"
	"golang.org/x/sync v0.7.0/go.mod"
	"golang.org/x/sys v0.0.0-20190529164535-6a60838ec259/go.mod"
	"golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab/go.mod"
	"golang.org/x/sys v0.6.0/go.mod"
	"golang.org/x/sys v0.18.0"
	"golang.org/x/sys v0.18.0/go.mod"
	"golang.org/x/sys v0.19.0"
	"golang.org/x/sys v0.19.0/go.mod"
	"golang.org/x/text v0.14.0"
	"golang.org/x/text v0.14.0/go.mod"
	"golang.org/x/tools v0.19.0"
	"golang.org/x/tools v0.19.0/go.mod"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240401170217-c3f982113cda"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240401170217-c3f982113cda/go.mod"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240412170617-26222e5d3d56"
	"google.golang.org/genproto/googleapis/api v0.0.0-20240412170617-26222e5d3d56/go.mod"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240401170217-c3f982113cda"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240401170217-c3f982113cda/go.mod"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240412170617-26222e5d3d56"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240412170617-26222e5d3d56/go.mod"
	"google.golang.org/grpc v1.62.1"
	"google.golang.org/grpc v1.62.1/go.mod"
	"google.golang.org/grpc v1.63.2"
	"google.golang.org/grpc v1.63.2/go.mod"
	"google.golang.org/protobuf v1.33.0"
	"google.golang.org/protobuf v1.33.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
)

DESCRIPTION="Backrest is a web UI and orchestrator for restic backup"
HOMEPAGE="https://github.com/garethgeorge/backrest"
SRC_URI="https://github.com/garethgeorge/backrest/tarball/5d8633c6d2c7dacd6e4bf7dc37b9e5b5bb0271c2 -> backrest-0.17.2-5d8633c.tar.gz
https://direct.funtoo.org/87/91/e3/8791e323b7e729095b6b6b6ebd24988cb20c113dacb6a3d2e242d0850eba157aa783f12df40a1d4a119cb65d2bb03fe74e41fdc63621becd0dfc09218353f9a5 -> backrest-0.17.2-funtoo-go-bundle-84e536a597fe0ebdb1eeaa72a4649baefb48a8e8a9db96ffc9e56676ae53289d7d9ec35f94d70719f6e644f3199e9113f69d1f525ab011c6f8fbe88810edfe0a.tar.gz"

LICENSE="GPL-3.0"
SLOT="0"
KEYWORDS="*"

RDEPEND="app-backup/restic"
DEPEND="${RDEPEND}
	net-libs/nodejs
"

post_src_unpack() {
	mv ${WORKDIR}/garethgeorge-backrest-* ${S}
}

src_compile() {
	GOOS=linux BACKREST_BUILD_VERSION=0.17.2 \
		go generate ./...

	CGO_ENABLED=0 \
		go build \
		-asmflags "-trimpath=${S}" \
		-gcflags "-trimpath=${S}" \
		-o backrest .
}

src_install() {
	dobin backrest
}