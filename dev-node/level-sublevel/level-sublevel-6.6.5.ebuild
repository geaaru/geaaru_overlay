# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# Ebuild automatically produced by node-ebuilder.

EAPI=6

DESCRIPTION="partition levelup databases"
HOMEPAGE="https://github.com/dominictarr/level-sublevel"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND="
	>=dev-node/bytewise-1.1.0
	>=dev-node/ltgt-2.1.3
	>=dev-node/pull-defer-0.2.3
	>=dev-node/pull-level-2.0.4
	>=dev-node/pull-stream-3.6.9
	>=dev-node/typewiselite-1.0.0
	>=dev-node/xtend-4.0.1
"
RDEPEND="${DEPEND}"

# Levelup 0.19.x is not available on portage
# and it's required for: Cannot find module 'levelup/lib/errors'
NPM_NO_DEPS=0
NPM_SYSTEM_MODULES="
	abstract-leveldown
	bl
	bytewise
	bytewise-core
	core-util-is
	deferred-leveldown
	errno
	inherits
	isarray
	level-post
	looper
	ltgt
	prr
	pull-cat
	pull-defer
	pull-level
	pull-live
	pull-pushable
	pull-stream
	pull-window
	readable-stream
	semver
	string_decoder
	typewise
	typewise-core
	typewiselite
	xtend
"
NPM_PKG_DIRS="
	codec
	examples
"

S="${WORKDIR}/package"

inherit npmv1

