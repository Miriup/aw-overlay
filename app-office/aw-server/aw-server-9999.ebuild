# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{9..12} )

inherit git-r3 distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/ActivityWatch/aw-server"
EGIT_REPO_URI="https://github.com/ActivityWatch/aw-server"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE="mongodb"

DEPEND=""
RDEPEND="${DEPEND}
	app-misc/aw-core[${PYTHON_USEDEP}]
	dev-python/flask-cors
	dev-python/flask-restx
	mongodb? ( dev-python/pymongo )
	"
BDEPEND=""
