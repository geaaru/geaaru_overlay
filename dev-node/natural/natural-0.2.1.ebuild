# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
# Ebuild automatically produced by node-ebuilder.

EAPI=5

DESCRIPTION="General natural language (tokenizing, stemming (English, Russian, Spanish), classification, inflection, phonetics, tfidf, WordNet, jaro-winkler, Levenshtein distance, Dice's Coefficient) facilities for node."
HOMEPAGE="https://github.com/NaturalNode/natural"

SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="
	>=dev-node/apparatus-0.0.9
	>=dev-node/sylvester-0.0.21
	>=dev-node/underscore-1.8.3
"
RDEPEND="${DEPEND}"

NPM_NO_DEPS=1

S="${WORKDIR}/package"

inherit npmv1

