# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1 systemd user

DESCRIPTION="OpenFlow controller for multi table OpenFlow 1.3 switches"
HOMEPAGE="https://github.com/faucetsdn/faucet"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ~arm64 x86 ~arm"
IUSE=""

DEPEND=">=dev-python/chewie-0.0.21[${PYTHON_USEDEP}]
	dev-python/datadiff[${PYTHON_USEDEP}]
	dev-python/eventlet[${PYTHON_USEDEP}]
	dev-python/influxdb[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/networkx[${PYTHON_USEDEP}]
	dev-python/prometheus_client[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	>=dev-python/ryu-4.34[${PYTHON_USEDEP}]
	>=dev-python/beka-0.3.4[${PYTHON_USEDEP}]
	dev-python/pytricia[${PYTHON_USEDEP}]
"
RDEPEND="$DEPEND"
DEPEND="$DEPEND
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]"

pkg_setup() {
	enewgroup faucet
	enewuser faucet -1 -1 /var/log/faucet faucet
}

src_prepare() {
	sed -e 's:^EnvironmentFile.*:EnvironmentFile=/etc/conf.d/faucet:' \
		-i "${S}"/debian/faucet.service
	sed -e 's:^EnvironmentFile.*:EnvironmentFile=/etc/conf.d/gauge:' \
		-i "${S}"/debian/gauge.service

	# Drop data_files section handled manually on src_install section
	sed -e 's/etc\/*.*//' -e 's/^data_files =//' -i setup.cfg

	distutils-r1_src_prepare
}

src_install() {
	DEBINSTALL=1 distutils-r1_src_install

	dodir /etc/${PN}
	diropts -m0750 -o root -g faucet
	dodir /var/log/${PN}
	keepdir /var/log/${PN}
	diropts

	fowners -R root:faucet /etc/faucet
	fowners -R root:faucet /var/log/faucet

	for conf in "${S}"/etc/${PN}/* ; do
		insinto /etc/${PN}
		doins ${conf}
	done

	insinto /etc/logrotate.d
	newins "${S}"/etc/logrotate.d/faucet faucet
	newins "${S}"/etc/logrotate.d/gauge gauge

	newconfd "${S}"/debian/faucet.default faucet
	newconfd "${S}"/debian/gauge.default gauge

	systemd_dounit "${S}"/debian/faucet.service
	systemd_dounit "${S}"/debian/gauge.service
}
