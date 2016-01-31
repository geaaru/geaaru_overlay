# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

EGIT_REPO_URI="https://gitlab.com/gitlab-org/gitlab-workhorse.git"
EGIT_COMMIT="${PV}"

inherit eutils git-2 user

DESCRIPTION="Handles slow HTTP requests for GitLab"
HOMEPAGE="https://about.gitlab.com/gitlab-ci/"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND=">=dev-lang/go-1.5.1"
RDEPEND="${DEPEND}"

src_install()
{
  into "/usr"
  dobin "gitlab-workhorse"
}
