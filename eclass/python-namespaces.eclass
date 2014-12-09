# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# @ECLASS: python-namespaces.eclass
# @MAINTAINER:
# geaaru
# @DESCRIPTION:
# Purpose: Create virtual package for handle creation of __init__.py files related
#          with packages with same namespaces. (PEP 0382: https://www.python.org/dev/peps/pep-0382/)
#          Link related with problem:
#          http://peak.telecommunity.com/DevCenter/setuptools#namespace-packages
# Note: This eclass is a fork of Arfrever Eclass.

# Use PYTHON_NAMESPACES variable to catch namespace to handle.

if [[ -z "${_PYTHON_ECLASS_INHERITED}" ]]; then
    inherit python
fi

if [[ -z "${PYTHON_NAMESPACES}" ]]; then
    die "PYTHON_NAMESPACES variable not set"
fi

# Set metadata for ebuild file
_python-namespaces_set_metadata() {

    local namespace

    _PYTHON_NAMESPACES=""
    _PYTHON_NAMESPACES_COUNT=0

    for namespace in ${PYTHON_NAMESPACES}; do
        _PYTHON_NAMESPACES+="${_PYTHON_NAMESPACES:+ }${namespace#[+-]}"
        ((_PYTHON_NAMESPACES_COUNT++))
    done

    DESCRIPTION="Python namespaces: ${_PYTHON_NAMESPACES// /, }"
    HOMEPAGE="http://www.gentoo.org/"
    SRC_URI=""
    IUSE=""
    REQUIRED_USE=""

    LICENSE="public-domain"
    SLOT="0"

    S="${WORKDIR}"
}

_python-namespaces_set_metadata
unset -f _python-namespaces_set_metadata


EXPORT_FUNCTIONS src_install pkg_postinst pkg_postrm



python-namespaces_src_install() {

    if [[ "${EBUILD_PHASE}" != "install" ]] ; then
        die "${FUNCNAME}() can be used only on src_install() phase"
    fi

    if [[ "$#" -ne 0 ]]; then
        die "${FUNCNAME}() does not accept arguments"
    fi

    python-namespaces_installation() {

        local namespace
        for namespace in ${_PYTHON_NAMESPACES}; do
            dodir $(python_get_sitedir)/${namespace//.//} || return 1
            echo \
"
import pkg_resources
pkg_resources.declare_namespace(__name__)
" > "${ED}$(python_get_sitedir)/${namespace//.//}/__init__.py" || return 1
        done
    }

    python-namespaces_installation

    unset -f python-namespaces_installation

}

# @FUNCTION: python-namespaces_pkg_postinst
# @DESCRIPTION:
# Implementation of pkg_postinst() phase. This function is exported.
# This function calls python_byte-compile_modules() with __init__.py modules corresponding to Python namespaces.
python-namespaces_pkg_postinst() {
    if [[ "${EBUILD_PHASE}" != "postinst" ]]; then
        die "${FUNCNAME}() can be used only in pkg_postinst() phase"
    fi

    _python_check_python_pkg_setup_execution

    if [[ "$#" -ne 0 ]]; then
        die "${FUNCNAME}() does not accept arguments"
    fi

    #python_byte-compile_modules $(for namespace in ${_PYTHON_NAMESPACES}; do echo ${namespace//.//}/__init__.py; done)
}

# @FUNCTION: python-namespaces_pkg_postrm
# @DESCRIPTION:
# Implementation of pkg_postrm() phase. This function is exported.
# This function calls python_clean_byte-compiled_modules() with __init__.py modules corresponding to Python namespaces.
python-namespaces_pkg_postrm() {
    if [[ "${EBUILD_PHASE}" != "postrm" ]]; then
        die "${FUNCNAME}() can be used only in pkg_postrm() phase"
    fi

    _python_check_python_pkg_setup_execution

    if [[ "$#" -ne 0 ]]; then
        die "${FUNCNAME}() does not accept arguments"
    fi

    #python_clean_byte-compiled_modules $(for namespace in ${_PYTHON_NAMESPACES}; do echo ${namespace//.//}/__init__.py; done)
}

# vim: ts=4 sw=4 expandtab
