# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cargo git-r3

DESCRIPTION="High-performance implementation of the ActivityWatch server, written in Rust"
HOMEPAGE="https://github.com/ActivityWatch/aw-server-rust"
EGIT_REPO_URI="https://github.com/ActivityWatch/aw-server-rust"
#CRATES="aw-server"
#SRC_URI="$(cargo_crate_uris)"

LICENSE=""
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	git-r3_src_unpack $*
	cargo_gen_config
}
