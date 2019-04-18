# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="transform an AST with source maps"
HOMEPAGE="https://github.com/goto-bus-stop/transform-ast#readme"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/acorn-node-1.6.2
	>=dev-node/convert-source-map-1.5.1
	>=dev-node/dash-ast-1.0.0
	>=dev-node/is-buffer-2.0.3
	>=dev-node/magic-string-0.23.2
	>=dev-node/merge-source-map-1.0.4
	>=dev-node/nanobench-2.1.1
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

