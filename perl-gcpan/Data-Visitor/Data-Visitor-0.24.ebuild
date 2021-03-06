# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.14.0

inherit perl-module

S=${WORKDIR}/Data-Visitor-0.24

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=${PN}"
SRC_URI="mirror://cpan/authors/id/N/NU/NUFFIN/Data-Visitor-0.24.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND="
	>=dev-perl/namespace-clean-0.11
	>=perl-gcpan/Test-MockObject-1.09
	virtual/perl-Test-Simple
	>=perl-gcpan/Any-Moose-0.07
	>=perl-gcpan/Tie-ToObject-0.03
	perl-gcpan/Test-use-ok
	dev-perl/Task-Weaken
"
RDEPEND="${DEPEND}"
