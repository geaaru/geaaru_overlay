# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# This ebuild generated by g-cpan 0.15.0

inherit perl-module

S=${WORKDIR}/MooseX-Params-Validate-0.12

DESCRIPTION="No description available"
HOMEPAGE="http://search.cpan.org/search?query=MooseX-Params-Validate&mode=dist"
SRC_URI="mirror://cpan/authors/id/D/DR/DROLSKY/MooseX-Params-Validate-0.12.tar.gz"


IUSE=""

SLOT="0"
LICENSE="|| ( Artistic GPL-2 )"
KEYWORDS="amd64"

DEPEND=">=dev-perl/Test-Exception-0.27
	dev-perl/Sub-Exporter
	>=dev-perl/Params-Validate-0.91
	dev-perl/Moose
	dev-perl/Devel-Caller
	dev-lang/perl"
