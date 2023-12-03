# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="An OCI container runtime monitor"
HOMEPAGE="https://github.com/containers/conmon"

SRC_URI="https://github.com/containers/conmon/tarball/00e08f4a9ca5420de733bf542b930ad58e1a7e7d -> conmon-2.1.8-00e08f4.tar.gz"
KEYWORDS="*"
GIT_COMMIT="00e08f4a9ca5420de733bf542b930ad58e1a7e7d"

LICENSE="Apache-2.0"
SLOT="0"
IUSE="+seccomp systemd"
RESTRICT="test"

RDEPEND="dev-libs/glib:=
	seccomp? ( sys-libs/libseccomp )
	systemd? ( sys-apps/systemd:= )"
DEPEND="${RDEPEND}"
BDEPEND="dev-go/go-md2man"
#PATCHES=(
#	"${FILESDIR}/conmon-2.1.8-Makefile.patch"
#)

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv containers-conmon* "${S}" || die
	fi
}

src_prepare() {
	default
	if use systemd; then
		sed -i -e 's|shell $(PKG_CONFIG) --exists libsystemd.* && echo "0"|shell echo "0"|g;' Makefile || die
	else
		sed -i -e 's|shell $(PKG_CONFIG) --exists libsystemd.* && echo "0"|shell echo "1"|g;' Makefile || die
	fi

	if use seccomp; then
		echo -e '#!/usr/bin/env bash\necho "0"' > hack/seccomp-notify.sh || die
	else
		echo -e '#!/usr/bin/env bash\necho "1"' > hack/seccomp-notify.sh || die
	fi
}

src_compile() {
	tc-export CC PKG_CONFIG
	export PREFIX=${EPREFIX}/usr GOMD2MAN=go-md2man
	emake GIT_COMMIT="${GIT_COMMIT}"
}

src_install() {
	#emake DESTDIR="${D}" \
	#	PREFIX="${ED}/usr" \
	#	install
	default
	dodir /usr/libexec/podman
	dosym ../../bin/"${PN}" /usr/libexec/podman/conmon
	dodoc README.md
}