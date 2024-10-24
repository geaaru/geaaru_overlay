# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: go-module.eclass
# @MAINTAINER:
# William Hubbs <williamh@gentoo.org>
# @AUTHOR:
# William Hubbs <williamh@gentoo.org>
# Robin H. Johnson <robbat2@gentoo.org>
# @SUPPORTED_EAPIS: 7
# @BLURB: basic eclass for building software written as go modules
# @DESCRIPTION:
# This eclass provides basic settings and functions needed by all software
# written in the go programming language that uses modules.
#
# If the software you are packaging  has a file named go.mod in its top
# level directory, it uses modules and	your ebuild should inherit this
# eclass. If it does not, your ebuild should use the golang-* eclasses.
#
# If, besides go.mod, your software has a directory named vendor in its
# top level directory, the only thing you need to do is inherit the
# eclass. If there is no vendor directory, you need to also populate
# EGO_SUM and call go-module_set_globals as discussed below.
#
# Since Go programs are statically linked, it is important that your ebuild's
# LICENSE= setting includes the licenses of all statically linked
# dependencies. So please make sure it is accurate.
# You can use a utility like dev-util/golicense (network connectivity is
# required) to extract this information from the compiled binary.
#
# @EXAMPLE:
#
# @CODE
#
# inherit go-module
#
# EGO_SUM=(
#	"github.com/aybabtme/rgbterm v0.0.0-20170906152045-cc83f3b3ce59/go.mod"
#	"github.com/aybabtme/rgbterm v0.0.0-20170906152045-cc83f3b3ce59"
# )
#
# go-module_set_globals
#
# SRC_URI="https://github.com/example/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
#		   ${EGO_SUM_SRC_URI}"
#
# @CODE

case ${EAPI:-0} in
	7) ;;
	*) die "${ECLASS} EAPI ${EAPI} is not supported."
esac

if [[ -z ${_GO_MODULE} ]]; then

inherit xdg-utils

_GO_MODULE=1

BDEPEND=">=dev-lang/go-1.12"

# Workaround for pkgcheck false positive: https://github.com/pkgcore/pkgcheck/issues/214
# MissingUnpackerDep: version ...: missing BDEPEND="app-arch/unzip"
# Added here rather than to each affected package, so it can be cleaned up just
# once when pkgcheck is improved.
BDEPEND+=" app-arch/unzip"

# Force go to build in module mode.
# In this mode the GOPATH environment variable is ignored.
# this will become the default in the future.
export GO111MODULE=on

# Set the default for the go build cache
# See "go help environment" for information on this setting
export GOCACHE="${T}/go-build"

# The following go flags should be used for all builds.
# -v prints the names of packages as they are compiled
# -x prints commands as they are executed
# -mod=readonly do not update go.mod/go.sum but fail if updates are needed
# -mod=vendor use the vendor directory instead of downloading dependencies
export GOFLAGS="-v -x -mod=readonly"

# Do not complain about CFLAGS etc since go projects do not use them.
QA_FLAGS_IGNORED='.*'

# Go packages should not be stripped with strip(1).
RESTRICT+=" strip"

EXPORT_FUNCTIONS src_unpack src_prepare pkg_postinst

# Set the default for the go module cache
# See "go help environment" for information on this setting
export GOMODCACHE="${WORKDIR}/go-mod"

# @ECLASS-VARIABLE: EGO_SUM
# @DESCRIPTION:
# This is an array based on the go.sum content from inside the target package.
# Each array entry must be quoted and contain information from a single
# line from go.sum.
#
# The format of go.sum is described upstream here:
# https://tip.golang.org/cmd/go/#hdr-Module_authentication_using_go_sum
#
# For inclusion in EGO_SUM, the h1: value and other future extensions SHOULD be
# omitted at this time. The EGO_SUM parser will accept them for ease of ebuild
# creation.
#
# h1:<hash> is the Hash1 structure used by upstream Go
# The Hash1 is MORE stable than Gentoo distfile hashing, and upstream warns
# that it's conceptually possible for the Hash1 value to remain stable while
# the upstream zipfiles change. Here are examples that do NOT change the h1:
# hash, but do change a regular checksum over all bytes of the file:
# - Differing mtimes within zipfile
# - Differing filename ordering with the zipfile
# - Differing zipfile compression parameters
# - Differing zipfile extra fields
#
# For Gentoo usage, the authors of this eclass feel that the h1: hash should
# NOT be included in the EGO_SUM at this time in order to reduce size of the
# ebuilds. This position will be reconsidered in future when a Go module
# distfile collision comes to light, where the Hash1 value of two distfiles is
# the same, but checksums over the file as a byte stream consider the files to
# be different.
#
# This decision  does NOT weaken Go module security, as Go will verify the
# go.sum copy of the Hash1 values during building of the package.

# @ECLASS-VARIABLE: EGO_VENDOR
# @DESCRIPTION:
# This variable is deprecated and should no longer be used. Please
# convert your ebuilds to use EGO_SUM.

# @FUNCTION: go-module_vendor_uris
# @DESCRIPTION:
# This function is deprecated.
go-module_vendor_uris() {
	local hash import line repo x
	for line in "${EGO_VENDOR[@]}"; do
		read -r import hash repo x <<< "${line}"
		if [[ -n ${x} ]]; then
			eerror "Trailing information in EGO_VENDOR in ${P}.ebuild"
			eerror "${line}"
			eerror "Trailing information is: \"${x}\""
			die "Invalid EGO_VENDOR format"
		fi
		: "${repo:=${import}}"
		echo "https://${repo}/archive/${hash}.tar.gz -> ${repo//\//-}-${hash}.tar.gz"
	done
}

# @ECLASS-VARIABLE: _GOMODULE_GOPROXY_BASEURI
# @DESCRIPTION:
# Golang module proxy service to fetch module files from. Note that the module
# proxy generally verifies modules via the Hash1 code.
#
# Users in China may find some mirrors in the default list blocked, and should
# explicitly set an entry in /etc/portage/mirrors for goproxy to
# https://goproxy.cn/ or another mirror that is not blocked in China.
# See https://arslan.io/2019/08/02/why-you-should-use-a-go-module-proxy/ for
# further details
#
# This variable is NOT intended for user-level configuration of mirrors, but
# rather to cover go modules that might exist only on specific Goproxy
# servers for non-technical reasons.
#
# This variable should NOT be present in user-level configuration e.g.
# /etc/portage/make.conf, as it will violate metadata immutability!
#
# I am considering removing this and just hard coding mirror://goproxy
# below, so please do not rely on it.
: "${_GOMODULE_GOPROXY_BASEURI:=https://proxy.golang.org/}"

# @ECLASS-VARIABLE: _GOMODULE_GOSUM_REVERSE_MAP
# @DESCRIPTION:
# Mapping back from Gentoo distfile name to upstream distfile path.
# Associative array to avoid O(N*M) performance when populating the GOPROXY
# directory structure.
declare -A -g _GOMODULE_GOSUM_REVERSE_MAP

# @FUNCTION: go-module_set_globals
# @DESCRIPTION:
# Convert the information in EGO_SUM for other usage in the ebuild.
# - Populates EGO_SUM_SRC_URI that can be added to SRC_URI
# - Exports _GOMODULE_GOSUM_REVERSE_MAP which provides reverse mapping from
#	distfile back to the relative part of SRC_URI, as needed for
#	GOPROXY=file:///...
go-module_set_globals() {
	local line exts
	# for tracking go.sum errors
	local error_in_gosum=0
	local -a gosum_errorlines
	# used make SRC_URI easier to read
	local newline=$'\n'

	# Now parse EGO_SUM
	for line in "${EGO_SUM[@]}"; do
		local module version modfile version_modfile kvs x
		read -r module version_modfile kvs <<< "${line}"
		# kvs contains the hash and may contain other data from
		# upstream in the future. We do not currently use any of this data.

		# Split 'v0.3.0/go.mod' into 'v0.3.0' and '/go.mod'
		# It might NOT have the trailing /go.mod
		IFS=/ read -r version modfile x <<<"${version_modfile}"
		# Reject multiple slashes
		if [[ -n ${x} ]]; then
			error_in_gosum=1
			gosum_errorlines+=( "Bad version: ${version_modfile}" )
			continue
		fi

		# The modfile variable should be either empty or '/go.mod'
		# There is a chance that upstream Go might add something else here in
		# the future, and we should be prepared to capture it.
		# The .info files do not need to be downloaded, they will be created
		# based on the .mod file.
		# See https://github.com/golang/go/issues/35922#issuecomment-584824275
		exts=()
		local errormsg=''
		case "${modfile}" in
			'') exts=( zip ) ;;
			'go.mod'|'/go.mod') exts=( mod ) ;;
			*) errormsg="Unknown modfile: line='${line}', modfile='${modfile}'" ;;
		esac

		# If it was a bad entry, restart the loop
		if [[ -n ${errormsg} ]]; then
			error_in_gosum=1
			gosum_errorlines+=( "${errormsg} line='${line}', modfile='${modfile}'" )
			continue
		fi

		_dir=$(_go-module_gomod_encode "${module}")

		for _ext in "${exts[@]}" ; do
			# Relative URI within a GOPROXY for a file
			_reluri="${_dir}/@v/${version}.${_ext}"
			# SRC_URI: LHS entry
			_uri="${_GOMODULE_GOPROXY_BASEURI}/${_reluri}"
#			_uri="mirror://goproxy/${_reluri}"
			# SRC_URI: RHS entry, encode any slash in the path as
			# %2F in the filename
			_distfile="${_reluri//\//%2F}"

			EGO_SUM_SRC_URI+=" ${_uri} -> ${_distfile}${newline}"
			EGO_A+="${_distfile}${newline}"
			_GOMODULE_GOSUM_REVERSE_MAP["${_distfile}"]="${_reluri}"
		done
	done

	if [[ ${error_in_gosum} != 0 ]]; then
		eerror "Trailing information in EGO_SUM in ${P}.ebuild"
		for line in "${gosum_errorlines[@]}" ; do
			eerror "${line}"
		done
		die "Invalid EGO_SUM format"
	fi

	# Ensure these variables are not changed past this point
	readonly EGO_SUM
	readonly EGO_SUM_SRC_URI
	readonly EGO_A
	readonly _GOMODULE_GOSUM_REVERSE_MAP

	# Set the guard that we are safe
	_GO_MODULE_SET_GLOBALS_CALLED=1
}

# @FUNCTION: go-module_src_unpack
# @DESCRIPTION:
# - If EGO_VENDOR is set, use the deprecated function to unpack the base
#	tarballs and the tarballs indicated in EGO_VENDOR to the correct
#	locations.
# - Otherwise, if EGO_SUM is set, unpack the base tarball(s) and set up the
#	local go proxy.
# - Otherwise do a normal unpack.
go-module_src_unpack() {
	if [ "${A/${P}-funtoo-go-bundle-/}" != "${A}" ]; then
		_go-module_src_unpack_funtoo_bundle
	elif [[ "${#EGO_VENDOR[@]}" -gt 0 ]]; then
		_go-module_src_unpack_vendor
	elif [[ "${#EGO_SUM[@]}" -gt 0 ]]; then
		_go-module_src_unpack_gosum
	else
		default
	fi
}

go-module_src_prepare() {
	if [ ${#EGO_SUM} != 0 ] || [ ${#GOPROXY} != 0 ]; then
		_go-module_src_prepare_verify_gosum
	fi
	# See Funtoo Linux bug FL-6885,FL-9561 for why this is needed:
	xdg_environment_reset
	default
}

# @FUNCTION: _go-module_src_unpack_gosum
# @DESCRIPTION:
# Populate a GOPROXY directory hierarchy with distfiles from a Funtoo Go
# bundle and unpack the base distfiles.
#
# Exports GOPROXY environment variable so that Go calls will source the
# directory correctly.
_go-module_src_unpack_funtoo_bundle() {
	einfo "Using Funtoo Go Bundle..."

	local goproxy_dir="${T}/go-proxy"
	mkdir -p "${goproxy_dir}" || die

	local f
	local dep
	local goproxy_mod_dir
	local go_srcdir="${WORKDIR}"/funtoo-go-bundle-"${PN}"

	unpack ${A}

	for dep in "${go_srcdir}"/*; do
		f="${dep#"${go_srcdir}/"}"
		# Unescape slashes in filename to get the path in the goproxy directory
		goproxy_mod_path="${f//\%2F//}"

		_go-module_process_dependency "${f}" "${goproxy_mod_path}"
	done

	export GOPROXY="file://${goproxy_dir}"
}

# @FUNCTION: _go-module_src_unpack_gosum
# @DESCRIPTION:
# Populate a GOPROXY directory hierarchy with distfiles from EGO_SUM and
# unpack the base distfiles.
#
# Exports GOPROXY environment variable so that Go calls will source the
# directory correctly.
_go-module_src_unpack_gosum() {

	# shellcheck disable=SC2120
	debug-print-function "${FUNCNAME}" "$@"

	if [[ ! ${_GO_MODULE_SET_GLOBALS_CALLED} ]]; then
		die "go-module_set_globals must be called in global scope"
	fi

	local goproxy_dir="${T}/go-proxy"
	mkdir -p "${goproxy_dir}" || die

	# For each Golang module distfile, look up where it's supposed to go, and
	# symlink into place.
	local f
	local goproxy_mod_dir
	for f in $A; do
		goproxy_mod_path="${_GOMODULE_GOSUM_REVERSE_MAP["${f}"]}"
		_go-module_process_dependency "${f}" "${goproxy_mod_path}"
	done
	export GOPROXY="file://${goproxy_dir}"
}

# @FUNCTION: _go-module_process_dependency
# @DESCRIPTION:
# Symlinks a Go module into a target Goproxy directory.
#
# Requires `go_srcdir` and `goproxy_dir` to be set accordingly by the caller.
_go-module_process_dependency() {
	local f=$1
	local goproxy_mod_path=$2

	if [[ -n "${goproxy_mod_path}" ]]; then
		debug-print-function "Populating go proxy for ${goproxy_mod_path}"

		# Build symlink hierarchy
		goproxy_mod_dir=$( dirname "${goproxy_dir}"/"${goproxy_mod_path}" )

		mkdir -p "${goproxy_mod_dir}" || die

		ln -sf "${go_srcdir}"/"${f}" "${goproxy_dir}/${goproxy_mod_path}" ||
			die "Failed to ln"

		local v=${goproxy_mod_path}

		v="${v%.mod}"
		v="${v%.zip}"
		v="${v//*\/}"

		_go-module_gosum_synthesize_files "${goproxy_mod_dir}" "${v}"
	else
		unpack "$f"
	fi
}

# @FUNCTION: _go-module_gosum_synthesize_files
# @DESCRIPTION:
# Given a path &  version, populate all Goproxy metadata files which aren't
# needed to be downloaded directly.
# - .../@v/${version}.info
# - .../@v/list
_go-module_gosum_synthesize_files() {
	local target=$1
	local version=$2
	# 'go get' doesn't care about the hash of the .info files, they
	# just need a 'version' element!
	# This saves a download of a tiny file
	# The .time key is omitted, because that is the time a module was added
	# to the upstream goproxy, and not metadata about the module itself.
	cat >"${target}/${version}.info" <<-EOF
	{
		"Version": "${version}",
		"shortName": "${version}",
		"Name": "${version}"
	}
	EOF
	listfile="${target}"/list
	if ! grep -sq -x -e "${version}" "${listfile}" 2>/dev/null; then
		echo "${version}" >>"${listfile}"
	fi
}

# @FUNCTION: _go-module_src_unpack_vendor
# @DESCRIPTION:
# Extract all archives in ${a} which are not mentioned in ${EGO_VENDOR}
# to their usual locations then extract all archives mentioned in
# ${EGO_VENDOR} to ${S}/vendor.
_go-module_src_unpack_vendor() {
	# shellcheck disable=SC2120
	debug-print-function "${FUNCNAME}" "$@"
	local f hash import line repo tarball vendor_tarballs x
	vendor_tarballs=()
	for line in "${EGO_VENDOR[@]}"; do
		read -r import hash repo x <<< "${line}"
		if [[ -n ${x} ]]; then
			eerror "Trailing information in EGO_VENDOR in ${P}.ebuild"
			eerror "${line}"
			die "Invalid EGO_VENDOR format"
		fi
		: "${repo:=${import}}"
		vendor_tarballs+=("${repo//\//-}-${hash}.tar.gz")
	done
	for f in ${A}; do
		[[ -n ${vendor_tarballs[*]} ]] && has "${f}" "${vendor_tarballs[@]}" &&
			continue
		unpack "${f}"
	done

	[[ -z ${vendor_tarballs[*]} ]] && return
	for line in "${EGO_VENDOR[@]}"; do
		read -r import hash repo _ <<< "${line}"
		: "${repo:=${import}}"
		tarball=${repo//\//-}-${hash}.tar.gz
		ebegin "Vendoring ${import} ${tarball}"
		rm -fr "${S}/vendor/${import}" || die
		mkdir -p "${S}/vendor/${import}" || die
		tar -C "${S}/vendor/${import}" -x --strip-components 1 \
			-f "${DISTDIR}/${tarball}" || die
		eend
	done
	# replace GOFLAGS if EGO_VENDOR is being used
	[[ ${#EGO_VENDOR[@]} -gt 0 ]] &&
		GOFLAGS="-v -x -mod=vendor"
	eqawarn "${P}.ebuild: EGO_VENDOR will be removed in the future."
	eqawarn "Please request that the author migrate to EGO_SUM."
}

# @FUNCTION: _go-module_src_prepare_verify_gosum
# @DESCRIPTION:
# Validate the Go modules declared by EGO_SUM are sufficient to cover building
# the package, without actually building it yet.
_go-module_src_prepare_verify_gosum() {
	# shellcheck disable=SC2120
	debug-print-function "${FUNCNAME}" "$@"

	cd "${S}"

	if [ -z "$EGO_SKIP_TIDY" ] ; then
		# Cleanup the modules before starting anything else
		# This will print 'downloading' messages, but it's accessing content from
		# the $GOPROXY file:/// URL!
		einfo "Tidying go.mod/go.sum"
		_go_mod_tidy_output=$(go mod tidy 2>&1 >/dev/null)
		if [[ $? -ne 0 ]]; then
			die "Failed to tidy go.mod/go.sum: ${_go_mod_tidy_output}"
		fi
		unset _go_mod_tidy_output
	fi

	# This used to call 'go get' to verify by fetching everything from the main
	# go.mod. However 'go get' also turns out to recursively try to fetch
	# everything in dependencies, even materials that are used only for tests
	# of the dependencies, or code generation.
	# If EGO_SUM is missing an entry now, it will fail during the build process
	# rather than this helper function.
}

# @FUNCTION: go-module_live_vendor
# @DESCRIPTION:
# This function is used in live ebuilds to vendor the dependencies when
# upstream doesn't vendor them.
go-module_live_vendor() {
	debug-print-function "${FUNCNAME}" "$@"

	# shellcheck disable=SC2086
	has live ${PROPERTIES} ||
		die "${FUNCNAME} only allowed in live ebuilds"
	[[ "${EBUILD_PHASE}" == unpack ]] ||
		die "${FUNCNAME} only allowed in src_unpack"
	[[ -d "${S}"/vendor ]] &&
		die "${FUNCNAME} only allowed when upstream isn't vendoring"

	pushd "${S}" >& /dev/null || die
	go mod vendor || die
	popd >& /dev/null || die
}

# @FUNCTION: go-module_pkg_postinst
# @DESCRIPTION:
# Display a warning about security updates for Go programs.
go-module_pkg_postinst() {
	debug-print-function "${FUNCNAME}" "$@"
	[[ -n ${REPLACING_VERSIONS} ]] && return 0
	ewarn "${PN} is written in the Go programming language."
	ewarn "Since this language is statically linked, security"
	ewarn "updates will be handled in individual packages and will be"
	ewarn "difficult for us to track as a distribution."
	ewarn "For this reason, please update any go packages asap when new"
	ewarn "versions enter the tree or go stable if you are running the"
	ewarn "stable tree."
}

# @FUNCTION: _go-module_gomod_encode
# @DESCRIPTION:
# Encode the name(path) of a Golang module in the format expected by Goproxy.
#
# Upper letters are replaced by their lowercase version with a '!' prefix.
#
_go-module_gomod_encode() {
	## Python:
	# return re.sub('([A-Z]{1})', r'!\1', s).lower()

	## Sed:
	## This uses GNU Sed extension \l to downcase the match
	#echo "${module}" |sed 's,[A-Z],!\l&,g'
	#
	# Bash variant:
	debug-print-function "${FUNCNAME}" "$@"
	#local re input lower
	re='(.*)([A-Z])(.*)'
	input="${1}"
	while [[ ${input} =~ ${re} ]]; do
		lower='!'"${BASH_REMATCH[2],}"
		input="${BASH_REMATCH[1]}${lower}${BASH_REMATCH[3]}"
	done
	echo "${input}"
}

fi
