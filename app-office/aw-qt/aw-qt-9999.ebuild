# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
# python 14 is not compatible:
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi git-r3

DESCRIPTION=""
HOMEPAGE=""
SRC_URI=""
EGIT_REPO_URI="https://github.com/ActivityWatch/aw-qt"

LICENSE=""
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND=">app-misc/aw-core-0.5
dev-python/click
dev-python/importlib-metadata
dev-python/setuptools
>=dev-python/pyqt6-6.5.3
dev-python/mypy
dev-python/flake8
${DEPEND}"
BDEPEND="
>=dev-python/pyinstaller-6.6"
