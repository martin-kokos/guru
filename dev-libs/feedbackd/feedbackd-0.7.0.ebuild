# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
VALA_USE_DEPEND="vapigen"

inherit meson systemd udev vala verify-sig

DESCRIPTION="DBus activated daemon that provides haptic/visual/audio feedback based on events"
HOMEPAGE="https://source.puri.sm/Librem5/feedbackd"
SRC_URI="https://sources.phosh.mobi/releases/${PN}/${P}.tar.xz
	verify-sig? ( https://sources.phosh.mobi/releases/${PN}/${P}.tar.xz.asc )"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="+daemon gtk-doc +introspection man test +vala"

REQUIRED_USE="vala? ( introspection )"
RESTRICT="!test? ( test )"

DEPEND="
	dev-libs/glib:2
	dev-libs/gmobile
	daemon? (
		dev-libs/json-glib
		dev-libs/libgudev
		media-libs/gsound
	)
	introspection? ( dev-libs/gobject-introspection )
	test? ( dev-util/umockdev )
"
RDEPEND="${DEPEND}
	acct-group/video
	dev-libs/feedbackd-device-themes
"
BDEPEND="
	dev-util/gdbus-codegen
	gtk-doc? ( dev-util/gi-docgen )
	man? ( dev-python/docutils )
	vala? ( $(vala_depend) )
	verify-sig? ( sec-keys/openpgp-keys-phosh )
"

VERIFY_SIG_OPENPGP_KEY_PATH="/usr/share/openpgp-keys/phosh.asc"

src_prepare() {
	default

	use vala && vala_setup
	sed -i 's/-G feedbackd/-G video/g' data/90-feedbackd.rules || die
}

src_configure() {
	local emesonargs=(
		$(meson_feature introspection)
		$(meson_use daemon)
		$(meson_use gtk-doc gtk_doc)
		$(meson_use man)
		$(meson_use test tests)
		$(meson_use vala vapi)
		-Dsystemd_user_unit_dir="$(systemd_get_userunitdir)"
	)
	meson_src_configure
}

src_install() {
	meson_src_install

	if use gtk-doc; then
		mkdir -p "${ED}"/usr/share/gtk-doc/html/ || die
		mv "${ED}"/usr/share/doc/libfeedback-${SLOT} "${ED}"/usr/share/gtk-doc/html/ || die
	fi
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	udev_reload
}
