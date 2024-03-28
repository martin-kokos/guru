# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	ahash@0.8.8
	aho-corasick@1.1.1
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.11
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.1
	anstyle@1.0.6
	anyhow@1.0.81
	arc-swap@1.6.0
	async-broadcast@0.5.1
	async-channel@1.9.0
	async-executor@1.5.1
	async-fs@1.6.0
	async-io@1.13.0
	async-io@2.1.0
	async-lock@2.8.0
	async-process@1.8.1
	async-recursion@1.0.5
	async-signal@0.2.5
	async-task@4.5.0
	async-trait@0.1.75
	atomic-waker@1.1.2
	atomic_refcell@0.1.12
	autocfg@1.1.0
	backtrace@0.3.69
	base64@0.21.4
	bitflags@1.3.2
	bitflags@2.4.0
	block-buffer@0.10.4
	block@0.1.6
	blocking@1.4.1
	bstr@1.7.0
	bumpalo@3.14.0
	byteorder@1.4.3
	bytes@1.6.0
	cairo-rs@0.18.2
	cairo-sys-rs@0.18.2
	cc@1.0.83
	cfg-expr@0.15.5
	cfg-if@1.0.0
	chrono-tz-build@0.2.1
	chrono-tz@0.8.4
	chrono@0.4.35
	clap@4.4.8
	clap_builder@4.4.8
	clap_lex@0.6.0
	cocoa-foundation@0.1.2
	cocoa@0.24.1
	codemap@0.1.3
	colorchoice@1.0.0
	concurrent-queue@2.3.0
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics@0.22.3
	cpufeatures@0.2.9
	crc32fast@1.3.2
	crossbeam-utils@0.8.16
	crypto-common@0.1.6
	darling@0.20.6
	darling_core@0.20.6
	darling_macro@0.20.6
	derivative@2.2.0
	derive_builder@0.20.0
	derive_builder_core@0.20.0
	derive_builder_macro@0.20.0
	deunicode@0.4.4
	diff@0.1.13
	digest@0.10.7
	dirs-sys@0.4.1
	dirs@5.0.1
	dispatch@0.2.0
	displaydoc@0.2.4
	doc-comment@0.3.3
	either@1.9.0
	encoding_rs@0.8.33
	enumflags2@0.7.8
	enumflags2_derive@0.7.8
	env_filter@0.1.0
	env_logger@0.11.3
	equivalent@1.0.1
	errno-dragonfly@0.1.2
	errno@0.3.4
	event-listener@2.5.3
	event-listener@3.0.1
	fastrand@1.9.0
	fastrand@2.0.1
	field-offset@0.3.6
	flate2@1.0.27
	fluent-bundle@0.15.2
	fluent-langneg@0.13.0
	fluent-syntax@0.11.0
	fluent-template-macros@0.9.1
	fluent-templates@0.9.1
	fluent@0.16.0
	flume@0.10.14
	flume@0.11.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.0
	fragile@2.0.0
	futures-channel@0.3.28
	futures-core@0.3.30
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-lite@1.13.0
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	futures@0.3.28
	gdk-pixbuf-sys@0.18.0
	gdk-pixbuf@0.18.0
	gdk4-sys@0.7.2
	gdk4-win32-sys@0.7.2
	gdk4-win32@0.7.2
	gdk4@0.7.3
	generic-array@0.14.7
	getrandom@0.2.10
	gimli@0.28.0
	gio-sys@0.18.1
	gio@0.18.2
	glib-macros@0.18.2
	glib-sys@0.18.1
	glib@0.18.2
	globset@0.4.13
	globwalk@0.8.1
	gobject-sys@0.18.0
	graphene-rs@0.18.1
	graphene-sys@0.18.1
	grass@0.13.2
	grass_compiler@0.13.2
	gsk4-sys@0.7.3
	gsk4@0.7.3
	gst-plugin-gtk4@0.11.0
	gst-plugin-version-helper@0.7.5
	gstreamer-base-sys@0.21.0
	gstreamer-base@0.21.0
	gstreamer-gl-sys@0.21.0
	gstreamer-gl@0.21.0
	gstreamer-play-sys@0.21.0
	gstreamer-play@0.21.0
	gstreamer-sys@0.21.0
	gstreamer-video-sys@0.21.0
	gstreamer-video@0.21.0
	gstreamer@0.21.0
	gtk4-macros@0.7.2
	gtk4-sys@0.7.3
	gtk4@0.7.3
	gvdb@0.5.2
	h2@0.4.3
	hashbrown@0.13.2
	hashbrown@0.14.1
	heck@0.4.1
	hermit-abi@0.3.3
	hex@0.4.3
	http-body-util@0.1.1
	http-body@1.0.0
	http@1.1.0
	httparse@1.8.0
	humansize@2.1.3
	humantime@2.1.0
	hyper-tls@0.6.0
	hyper-util@0.1.3
	hyper@1.2.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.57
	ident_case@1.0.1
	idna@0.4.0
	ignore@0.4.20
	indexmap@2.0.2
	instant@0.1.12
	intl-memoizer@0.5.1
	intl_pluralrules@7.0.2
	io-lifetimes@1.0.11
	ipnet@2.8.0
	itertools@0.11.0
	itoa@1.0.9
	jellyfin_api@10.8.13-2
	js-sys@0.3.64
	lasso@0.7.2
	lazy_static@1.4.0
	libadwaita-sys@0.5.3
	libadwaita@0.5.3
	libc@0.2.153
	libm@0.2.8
	linux-raw-sys@0.3.8
	linux-raw-sys@0.4.8
	lock_api@0.4.10
	log@0.4.21
	malloc_buf@0.0.6
	memchr@2.6.4
	memoffset@0.7.1
	memoffset@0.9.0
	mime@0.3.17
	miniz_oxide@0.7.1
	mio@0.8.11
	muldiv@1.0.1
	nanorand@0.7.0
	native-tls@0.2.11
	nix@0.26.4
	num-integer@0.1.45
	num-rational@0.4.1
	num-traits@0.2.16
	num_cpus@1.16.0
	objc@0.2.7
	object@0.32.1
	once_cell@1.18.0
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.101
	openssl@0.10.64
	option-ext@0.2.0
	option-operations@0.5.0
	ordered-stream@0.2.0
	pango-sys@0.18.0
	pango@0.18.0
	parking@2.2.0
	parse-zoneinfo@0.3.0
	paste@1.0.14
	percent-encoding@2.3.1
	pest@2.7.3
	pest_derive@2.7.3
	pest_generator@2.7.3
	pest_meta@2.7.3
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.11.2
	phf_macros@0.11.2
	phf_shared@0.11.2
	pin-project-internal@1.1.5
	pin-project-lite@0.2.13
	pin-project@1.1.5
	pin-utils@0.1.0
	piper@0.2.1
	pkg-config@0.3.27
	polling@2.8.0
	polling@3.3.0
	pollster@0.3.0
	ppv-lite86@0.2.17
	pretty-hex@0.3.0
	pretty_assertions@1.4.0
	proc-macro-crate@1.3.1
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro-hack@0.5.20+deprecated
	proc-macro2@1.0.78
	quick-xml@0.30.0
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_syscall@0.4.1
	redox_users@0.4.3
	regex-automata@0.4.5
	regex-syntax@0.8.2
	regex@1.10.4
	relm4-icons@0.7.0-alpha.2
	relm4-macros@0.7.0-rc.1
	relm4@0.7.0-rc.1
	reqwest@0.12.2
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.37.27
	rustix@0.38.15
	rustls-pemfile@1.0.4
	ryu@1.0.15
	safe-transmute@0.11.2
	same-file@1.0.6
	schannel@0.1.22
	scopeguard@1.2.0
	security-framework-sys@2.9.1
	security-framework@2.9.2
	self_cell@0.10.3
	self_cell@1.0.3
	semver@1.0.19
	serde@1.0.197
	serde_derive@1.0.197
	serde_json@1.0.115
	serde_repr@0.1.18
	serde_spanned@0.6.5
	serde_urlencoded@0.7.1
	sha1@0.10.6
	sha2@0.10.8
	shell-words@1.1.0
	signal-hook-registry@1.4.1
	siphasher@0.3.11
	slab@0.4.9
	slug@0.1.4
	smallvec@1.13.2
	snafu-derive@0.7.5
	snafu@0.7.5
	socket2@0.4.9
	socket2@0.5.5
	souvlaki@0.7.3
	spin@0.9.8
	static_assertions@1.1.0
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.48
	sync_wrapper@0.1.2
	sys-locale@0.3.1
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	system-deps@6.1.2
	target-lexicon@0.12.11
	tempfile@3.8.0
	tera@1.19.1
	thiserror-impl@1.0.49
	thiserror@1.0.49
	thread_local@1.1.7
	tinystr@0.7.4
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.2.0
	tokio-native-tls@0.3.1
	tokio-util@0.7.9
	tokio@1.36.0
	toml@0.8.12
	toml_datetime@0.6.5
	toml_edit@0.19.15
	toml_edit@0.22.9
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing@0.1.40
	try-lock@0.2.4
	type-map@0.4.0
	typenum@1.17.0
	ucd-trie@0.1.6
	uds_windows@1.0.2
	unic-char-property@0.9.0
	unic-char-range@0.9.0
	unic-common@0.9.0
	unic-langid-impl@0.9.4
	unic-langid-macros-impl@0.9.4
	unic-langid-macros@0.9.4
	unic-langid@0.9.4
	unic-segment@0.9.0
	unic-ucd-segment@0.9.0
	unic-ucd-version@0.9.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	url@2.4.1
	utf8parse@0.2.1
	uuid@1.8.0
	vcpkg@0.2.15
	version-compare@0.1.1
	version_check@0.9.4
	waker-fn@1.1.1
	walkdir@2.4.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasite@0.1.0
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-futures@0.4.37
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-shared@0.2.87
	wasm-bindgen@0.2.87
	wasm-streams@0.4.0
	web-sys@0.3.64
	whoami@1.5.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows@0.44.0
	windows@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winnow@0.5.15
	winnow@0.6.1
	winreg@0.50.0
	xdg-home@1.0.0
	yansi@0.5.1
	zbus@3.14.1
	zbus_macros@3.14.1
	zbus_names@2.6.0
	zerocopy-derive@0.7.32
	zerocopy@0.7.32
	zvariant@3.15.0
	zvariant_derive@3.15.0
	zvariant_utils@1.0.1
"

inherit cargo gnome2-utils meson xdg

DESCRIPTION="Stream movies and TV shows from Jellyfin"
HOMEPAGE="https://codeberg.org/avery42/delfin"
SRC_URI="
	https://codeberg.org/avery42/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${PN}"

LICENSE="GPL-3"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD MIT MPL-2.0
	Unicode-DFS-2016 Unlicense ZLIB
"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	media-video/mpv
"
DEPEND="
	gui-libs/gtk
	gui-libs/libadwaita
"
BDEPEND="
	>=virtual/rust-1.76.0
"
# Rust
QA_FLAGS_IGNORED="usr/bin/${PN}"

BUILD_DIR="${S}/build"

src_compile() {
	meson_src_compile
}

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_pkg_postrm
	gnome2_schemas_update
	xdg_icon_cache_update
}
