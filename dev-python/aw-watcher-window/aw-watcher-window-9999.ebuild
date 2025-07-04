# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 pypi git-r3

DESCRIPTION="Cross-platform window-Watcher for Linux (X11), macOS, Windows."
HOMEPAGE="
	https://pypi.org/project/aw-watcher-window/
"
EGIT_REPO_URI="https://github.com/ActivityWatch/aw-watcher-window"
SRC_URI=""
S="${WORKDIR}/${P}"

LICENSE=""
SLOT="0"
KEYWORDS=""

RDEPEND=">app-misc/aw-client-0.5.14
dev-python/python-xlib
"
BDEPEND="
"

distutils_enable_tests pytest
