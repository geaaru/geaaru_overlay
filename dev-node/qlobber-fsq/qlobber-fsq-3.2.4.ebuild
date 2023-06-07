# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="Shared file system queue. Supports pub-sub, work queues, wildcards, multi-process and distributed use."
HOMEPAGE="https://github.com/davedoesdev/qlobber-fsq"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/async-1.5.2
	>=dev-node/fs-ext-0.5.0
	>=dev-node/graceful-fs-4.1.11
	>=dev-node/qlobber-0.7.0
"
RDEPEND="${DEPEND}"


S="${WORKDIR}/package"

inherit npmv1

