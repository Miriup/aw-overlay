# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Webapp for visualizing and browsing ActivityWatch data"
HOMEPAGE="https://github.com/ActivityWatch/aw-webui"
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE=""
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="net-libs/nodejs[npm]"

src_compile() {
	npm ci
	npm run build
}

src_install() {
	insinto /usr/share/webapps/${PF}/htdocs
	doins -r ${S}/dist/*
}
