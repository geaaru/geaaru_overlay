# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="PycURL -- A Python Interface To The cURL library"
HOMEPAGE="http://pycurl.io/ https://pypi.org/project/pycurl/"
SRC_URI="https://files.pythonhosted.org/packages/a8/af/24d3acfa76b867dbd8f1166853c18eefc890fc5da03a48672b38ea77ddae/pycurl-7.45.2.tar.gz -> pycurl-7.45.2.tar.gz"

DEPEND="
	${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	>=net-misc/curl-7.25.0-r1[ssl=]
	ssl? (
		net-misc/curl[curl_ssl_gnutls(-)=,curl_ssl_nss(-)=,curl_ssl_openssl(-)=,-curl_ssl_axtls(-),-curl_ssl_cyassl(-)]
		curl_ssl_gnutls? ( >=net-libs/gnutls-2.11.0 )
	)"
IUSE="+curl_ssl_openssl curl_ssl_gnutls curl_ssl_nss ssl"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pycurl-7.45.2"

python_configure_all() {
	# Override faulty detection in setup.py, bug #510974.
	export PYCURL_SSL_LIBRARY=${CURL_SSL}
}
