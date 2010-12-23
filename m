Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A57CC4C81067
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 07:50:01 -0600 (CST)
Received: by wye20 with SMTP id 20so6452021wye.35
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 05:50:00 -0800 (PST)
Received: by 10.216.185.142 with SMTP id u14mr12057812wem.31.1293112199036;
	Thu, 23 Dec 2010 05:49:59 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id t5sm3752020wes.9.2010.12.23.05.49.57
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 23 Dec 2010 05:49:58 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293111933-5071-1-git-send-email-koen@openembedded.org>
Date: Thu, 23 Dec 2010 14:49:57 +0100
Message-Id: <BBA49DD1-C22E-4CD2-A222-65F4774C32B9@dominion.thruhere.net>
References: <1293050270.3578.172.camel@rex>
	<1293111933-5071-1-git-send-email-koen@openembedded.org>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [RFC][PATCH] RDEPENDS, RRECOMMENDS -> RDPEPENDS_${PN}, RRECOMMENDS_${PN}
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Dec 2010 13:50:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

This breaks task-base and task-poky boot, but other comments are welcome =
while I work on v2!

Op 23 dec 2010, om 14:45 heeft Koen Kooi het volgende geschreven:

> From: Koen Kooi <koen@dominion.thruhere.net>
>=20
> For these recipes the depencies listed in RDEPENDS and RRECOMMENDS =
only apply to ${PN}
>=20
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
> .../openswan/openswan_2.4.7.bb                     |    4 ++--
> .../recipes-connectivity/opensync/libsync_svn.bb   |    3 ++-
> .../telepathy/empathy_2.26.1.bb                    |    6 +++---
> .../recipes-gnome/abiword/abiword-2.5.inc          |    2 +-
> .../abiword/abiword-embedded_2.5.2.bb              |    2 ++
> meta-demoapps/recipes-gnome/abiword/abiword.inc    |    2 +-
> .../recipes-gnome/abiword/abiword_2.5.2.bb         |    2 +-
> meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb |    2 +-
> .../recipes-gnome/libgsf/libgsf_1.14.5.bb          |    4 ++--
> .../matchbox-themes-gtk/matchbox-themes-gtk.bb     |    4 ++--
> .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    4 ++--
> meta/recipes-bsp/grub/grub_0.97.bb                 |    4 ++--
> meta/recipes-bsp/hostap/hostap-conf_1.0.bb         |    4 ++--
> meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb       |    4 ++--
> meta/recipes-bsp/qemu-config/qemu-config.bb        |    4 ++--
> meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    3 ++-
> meta/recipes-connectivity/avahi/avahi.inc          |    2 +-
> meta/recipes-connectivity/avahi/avahi_0.6.28.bb    |    2 +-
> meta/recipes-connectivity/gsm/gsmd.inc             |    4 ++--
> .../libnss-mdns/libnss-mdns_0.10.bb                |    4 ++--
> .../nfs-utils/nfs-utils_1.2.3.bb                   |    6 +++---
> .../ppp-dialin/ppp-dialin_0.1.bb                   |    4 ++--
> .../resolvconf/resolvconf_1.43.bb                  |    4 ++--
> meta/recipes-core/glibc/glibc.inc                  |    2 +-
> meta/recipes-core/glibc/glibc_2.10.1.bb            |    2 +-
> meta/recipes-core/initscripts/initscripts_1.0.bb   |    4 ++--
> meta/recipes-core/meta/external-python-tarball.bb  |    4 +++-
> meta/recipes-core/meta/meta-toolchain.bb           |    2 +-
> meta/recipes-core/tasks/task-base.bb               |    6 +++---
> meta/recipes-core/tasks/task-poky-boot.bb          |    6 +++---
> meta/recipes-devtools/apt/apt_0.7.14.bb            |    4 ++--
> meta/recipes-devtools/distcc/distcc_2.18.3.bb      |    4 ++--
> .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    4 ++--
> meta/recipes-devtools/intltool/intltool.inc        |    4 ++--
> meta/recipes-devtools/intltool/intltool_0.40.6.bb  |    2 +-
> meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb |    4 ++--
> meta/recipes-devtools/python/python-dbus_0.83.1.bb |    4 ++--
> meta/recipes-devtools/python/python-gst_0.10.19.bb |    4 ++--
> .../python/python-imaging_1.1.7.bb                 |    4 ++--
> .../python/python-pycurl_7.19.0.bb                 |    4 ++--
> .../recipes-devtools/python/python-pygtk_2.17.0.bb |    4 ++--
> .../python/python-pyrex-native_0.9.9.bb            |    4 ++--
> .../python/python-scons-native_2.0.1.bb            |    4 ++--
> .../qemu/qemu-helper-native_1.0.bb                 |    4 ++--
> .../qemu/qemu-helper-nativesdk_1.0.bb              |    4 ++--
> .../subversion/subversion_1.6.13.bb                |    4 ++--
> meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    4 ++--
> .../unfs-server/unfs-server_2.2beta47.bb           |    4 ++--
> .../update-alternatives-dpkg_1.13.22.bb            |    4 +++-
> meta/recipes-extended/libzypp/libzypp_git.bb       |    4 ++--
> meta/recipes-extended/man-pages/man-pages_3.25.bb  |    4 ++--
> meta/recipes-extended/mc/mc_4.7.3.bb               |    4 +++-
> meta/recipes-extended/polkit/polkit_0.99.bb        |    4 ++--
> meta/recipes-extended/shadow/shadow.inc            |    2 +-
> meta/recipes-extended/shadow/shadow_4.1.4.2.bb     |    2 +-
> meta/recipes-extended/zypper/zypper_git.bb         |    4 ++--
> .../recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb |    6 +++---
> meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb   |    4 ++--
> meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb |    4 ++--
> .../gtk+/gdk-pixbuf-csource-native_2.12.7.bb       |    4 ++--
> meta/recipes-gnome/gtk+/gtk+.inc                   |    2 +-
> meta/recipes-gnome/gtk+/gtk+_2.12.7.bb             |    2 +-
> meta/recipes-gnome/gtk+/gtk+_2.16.6.bb             |    2 +-
> meta/recipes-gnome/gtk+/gtk+_2.20.1.bb             |    2 +-
> meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb     |    4 ++--
> .../tasks/task-poky-standalone-gmae-sdk-target.bb  |    4 ++--
> meta/recipes-graphics/cairo/cairo_1.10.0.bb        |    4 ++--
> .../libsdl/libsdl-nativesdk_1.2.11.bb              |    4 ++--
> meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb  |    3 ++-
> .../recipes-graphics/xorg-font/font-alias_1.0.3.bb |    4 ++--
> meta/recipes-graphics/xorg-font/font-util_1.2.0.bb |    4 ++--
> .../xorg-font/xorg-font-common.inc                 |    4 ++--
> .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    4 ++--
> meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |    4 ++--
> meta/recipes-kernel/oprofile/oprofile_0.9.6.bb     |    6 +++---
> meta/recipes-kernel/oprofile/oprofile_cvs.bb       |    6 +++---
> .../update-modules/update-modules_1.0.bb           |    6 +++---
> .../gstreamer/gst-openmax_0.10.1.bb                |    4 ++--
> .../gstreamer/gst-plugins-base_0.10.30.bb          |    4 ++--
> meta/recipes-qt/qt-apps/fotowall_0.9.bb            |    4 +++-
> meta/recipes-qt/qt-apps/qmmp_0.4.1.bb              |    4 ++--
> meta/recipes-qt/qt-apps/quicky_0.4.bb              |    4 +++-
> meta/recipes-sato/eds/eds-tools_bzr.bb             |    4 ++--
> meta/recipes-sato/gaku/gaku_svn.bb                 |    6 +++---
> .../matchbox-config-gtk/matchbox-config-gtk_svn.bb |    3 ++-
> .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    4 ++--
> .../matchbox-sato/matchbox-session-sato_0.1.bb     |    4 ++--
> .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    6 +++---
> meta/recipes-sato/pimlico/contacts.inc             |    2 +-
> meta/recipes-sato/pimlico/contacts_0.9.bb          |    2 +-
> meta/recipes-sato/pimlico/contacts_git.bb          |    2 +-
> meta/recipes-sato/pimlico/dates.inc                |    2 +-
> meta/recipes-sato/pimlico/dates_0.4.8.bb           |    2 +-
> meta/recipes-sato/pimlico/dates_git.bb             |    2 +-
> meta/recipes-support/enchant/enchant_1.6.0.bb      |    4 ++--
> meta/recipes-support/hal/hal.inc                   |    2 +-
> meta/recipes-support/hal/hal_0.5.14.bb             |    2 +-
> meta/recipes-support/hal/hal_git.bb                |    2 +-
> 98 files changed, 186 insertions(+), 170 deletions(-)
>=20
> diff --git =
a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb =
b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
> index 022f709..2283336 100644
> --- a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
> +++ b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
> @@ -5,9 +5,9 @@ Linux operating system."
> HOMEPAGE =3D "http://www.openswan.org"
> LICENSE =3D "GPLv2"
> DEPENDS =3D "gmp flex-native"
> -RRECOMMENDS =3D "kernel-module-ipsec"
> +RRECOMMENDS_${PN} =3D "kernel-module-ipsec"
> RDEPENDS_nylon =3D "perl"
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D =
"http://www.openswan.org/download/old/openswan-${PV}.tar.gz \
> 	   file://openswan-2.4.7-gentoo.patch;patch=3D1 \
> diff --git =
a/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb =
b/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
> index 74ca752..06e44fd 100644
> --- a/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
> +++ b/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
> @@ -4,10 +4,11 @@ OpenSync in GLib applications."
> LICENSE =3D "LGPL"
> SECTION =3D "x11"
> DEPENDS =3D "glib-2.0 gtk+ libglade libopensync avahi"
> -RRECOMMENDS =3D "\
> +RRECOMMENDS_${PN} =3D "\
> 	libopensync-plugin-file \
> 	"
> PV =3D "0.0+svnr${SRCREV}"
> +PR =3D "r1"
>=20
> SRC_URI =3D =
"svn://svn.o-hand.com/repos/sync/trunk;module=3Dsync;proto=3Dhttp"
>=20
> diff --git =
a/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb =
b/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
> index 2e07b19..2c973ac 100644
> --- a/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
> +++ b/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
> @@ -6,9 +6,9 @@ Gadu-Gadu, Groupwise, ICQ and QQ."
> HOMEPAGE =3D "http://blogs.gnome.org/view/xclaesse/2007/04/26/0"
> LICENSE =3D "GPL"
> DEPENDS =3D "libcanberra telepathy-farsight gnome-doc-utils =
python-native telepathy-python telepathy-mission-control libtelepathy =
telepathy-glib gtk+ gconf libglade eds-dbus"
> -RDEPENDS =3D "telepathy-mission-control"
> -RRECOMMENDS =3D "telepathy-gabble"
> -PR =3D "r2"
> +RDEPENDS_${PN} =3D "telepathy-mission-control"
> +RRECOMMENDS_${PN} =3D "telepathy-gabble"
> +PR =3D "r3"
>=20
> inherit gnome
>=20
> diff --git a/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc =
b/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
> index dcd3b85..e3f6a9d 100644
> --- a/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
> +++ b/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
> @@ -3,7 +3,7 @@ HOMEPAGE =3D "http://www.abiword.org"
> SECTION =3D "x11/office"
> LICENSE =3D "GPLv2"
> DEPENDS     =3D "perl-native wv libgsf libglade libfribidi jpeg libpng =
libxml2"
> -RDEPENDS    =3D "glibc-gconv-ibm850 glibc-gconv-cp1252 \
> +RDEPENDS_${PN}    =3D "glibc-gconv-ibm850 glibc-gconv-cp1252 \
>                glibc-gconv-iso8859-15 glibc-gconv-iso8859-1"
>=20
> SRC_URI =3D =
"http://www.abiword.org/downloads/abiword/${PV}/source/abiword-${PV}.tar.g=
z"
> diff --git =
a/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb =
b/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
> index 47cf9e0..7ee0f86 100644
> --- a/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
> +++ b/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
> @@ -1,5 +1,7 @@
> require abiword-2.5.inc
>=20
> +PR =3D "r1"
> +
> EXTRA_OECONF +=3D "--enable-embedded"
>=20
> S =3D "${WORKDIR}/abiword-${PV}"
> diff --git a/meta-demoapps/recipes-gnome/abiword/abiword.inc =
b/meta-demoapps/recipes-gnome/abiword/abiword.inc
> index d2fabf9..5d7e3ce 100644
> --- a/meta-demoapps/recipes-gnome/abiword/abiword.inc
> +++ b/meta-demoapps/recipes-gnome/abiword/abiword.inc
> @@ -4,7 +4,7 @@ HOMEPAGE =3D "http://www.abiword.org""
> LICENSE =3D "GPLv2"
>=20
> DEPENDS     =3D "libgsf libglade libfribidi libxml2 wv"
> -RRECOMMENDS    =3D "glibc-gconv-ibm850 glibc-gconv-cp1252 \
> +RRECOMMENDS_${PN}    =3D "glibc-gconv-ibm850 glibc-gconv-cp1252 \
>                glibc-gconv-iso8859-15 glibc-gconv-iso8859-1"
>=20
> # Share this file between recipes that use cvs and that pull tarballs
> diff --git a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb =
b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
> index 566d0fa..b879064 100644
> --- a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
> +++ b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
> @@ -1,5 +1,5 @@
> require abiword-2.5.inc
>=20
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> RCONFLICTS =3D "abiword-embedded"
> diff --git a/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb =
b/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
> index e0e3bd7..4dffbd0 100644
> --- a/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
> +++ b/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
> @@ -1,7 +1,7 @@
> require abiword.inc
>=20
> PV=3D"2.5.0+cvs${SRCDATE}"
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> SRC_URI =3D "${CVSURI}"
>=20
> diff --git a/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb =
b/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
> index 760c5c1..3ac7d6e 100644
> --- a/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
> +++ b/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
> @@ -1,10 +1,10 @@
> DESCRIPTION =3D "GNOME Structured File Library"
> LICENSE =3D "GPL"
> SECTION =3D "libs"
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> DEPENDS=3D "libxml2 bzip2 glib-2.0 zlib"
> -RDEPENDS =3D "gconf gnome-vfs"
> +RDEPENDS_${PN} =3D "gconf gnome-vfs"
>=20
>=20
> PACKAGES =3D+ "${PN}-gnome ${PN}-gnome-dev "
> diff --git =
a/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb =
b/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
> index 60be56d..21716cf 100644
> --- =
a/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
> +++ =
b/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
> @@ -1,9 +1,9 @@
> DESCRIPTION =3D "Gtk2 theme files to accompany default Matchbox =
themes"
> LICENSE =3D "GPL"
> DEPENDS =3D "gtk-engines"
> -RDEPENDS =3D "matchbox-wm gtk-engine-clearlooks"
> +RDEPENDS_${PN} =3D "matchbox-wm gtk-engine-clearlooks"
> SECTION =3D "x11/base"
> -PR =3D "r2"
> +PR =3D "r3"
>=20
> SRC_URI =3D "file://gtkrc"
>=20
> diff --git a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb =
b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
> index d186727..05bedb9 100644
> --- a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
> +++ b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
> @@ -6,9 +6,9 @@ LICENSE=3D"GPL"
> LIC_FILES_CHKSUM =3D =
"file://debian/copyright;md5=3D77ef83ab5f4af938a93edb61f7b74f2c"
>=20
> PV =3D "1.1.11+git${SRCREV}"
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> -RDEPENDS =3D "pm-utils"
> +RDEPENDS_${PN} =3D "pm-utils"
>=20
> SRC_URI =3D =
"git://git.debian.org/git/debian-eeepc/eeepc-acpi-scripts.git;protocol=3Dg=
it \
> 	   file://remove-doc-check.patch;patch=3D1 \
> diff --git a/meta/recipes-bsp/grub/grub_0.97.bb =
b/meta/recipes-bsp/grub/grub_0.97.bb
> index 503dac0..131d942 100644
> --- a/meta/recipes-bsp/grub/grub_0.97.bb
> +++ b/meta/recipes-bsp/grub/grub_0.97.bb
> @@ -10,8 +10,8 @@ LICENSE =3D "GPLv2+"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dc93c0550bd3173f4504b2cbd8991e50b \
>                     =
file://grub/main.c;beginline=3D3;endline=3D9;md5=3D22a5f28d2130fff9f2a17ed=
54be90ed6"
>=20
> -RDEPENDS =3D "diffutils"
> -PR =3D "r2"
> +RDEPENDS_${PN} =3D "diffutils"
> +PR =3D "r3"
>=20
> SRC_URI =3D "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz; \
> 	   file://autohell.patch;apply=3Dyes "
> diff --git a/meta/recipes-bsp/hostap/hostap-conf_1.0.bb =
b/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
> index ef004e6..fa29470 100644
> --- a/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
> +++ b/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
> @@ -3,9 +3,9 @@ SECTION =3D "kernel/modules"
> PRIORITY =3D "optional"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D393a5ca445f6965873eca0259a17f833"
> -RDEPENDS =3D "update-modules"
> +RDEPENDS_${PN} =3D "update-modules"
> PACKAGE_ARCH =3D "all"
> -PR =3D "r11"
> +PR =3D "r12"
>=20
> SRC_URI =3D "file://hostap_cs.modalias \
>            file://COPYING.patch"
> diff --git a/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb =
b/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
> index bc22f6f..a24d004 100644
> --- a/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
> +++ b/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
> @@ -3,9 +3,9 @@ SECTION =3D "kernel/modules"
> PRIORITY =3D "optional"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D393a5ca445f6965873eca0259a17f833"
> -RDEPENDS =3D "update-modules"
> +RDEPENDS_${PN} =3D "update-modules"
> PACKAGE_ARCH =3D "all"
> -PR =3D "r5"
> +PR =3D "r6"
>=20
> SRC_URI =3D "file://orinoco_cs.conf \
>            file://COPYING.patch"
> diff --git a/meta/recipes-bsp/qemu-config/qemu-config.bb =
b/meta/recipes-bsp/qemu-config/qemu-config.bb
> index dbe5d83..0792670 100644
> --- a/meta/recipes-bsp/qemu-config/qemu-config.bb
> +++ b/meta/recipes-bsp/qemu-config/qemu-config.bb
> @@ -3,8 +3,8 @@ DESCRIPTION =3D "Adds scripts to use distcc on the =
host system under qemu"
> LICENSE =3D "GPL"
> LIC_FILES_CHKSUM =3D =
"file://${WORKDIR}/COPYING.GPL;md5=3D751419260aa954499f7abaabaa882bbe"
>=20
> -RDEPENDS =3D "distcc task-poky-nfs-server oprofileui-server rsync =
bash"
> -PR =3D "r18"
> +RDEPENDS_${PN} =3D "distcc task-poky-nfs-server oprofileui-server =
rsync bash"
> +PR =3D "r19"
>=20
> SRC_URI =3D "file://distcc.sh \
>            file://anjuta-remote-run \
> diff --git a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb =
b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
> index 523f72d..64145a3 100644
> --- a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
> +++ b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
> @@ -3,8 +3,9 @@ SECTION =3D "base"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f"
> DEPENDS =3D "tslib"
> -RDEPENDS =3D "xrandr"
> +RDEPENDS_${PN} =3D "xrandr"
> PV =3D "0.0+svnr${SRCREV}"
> +PR =3D "r1"
>=20
> SRC_URI =3D =
"svn://svn.o-hand.com/repos/misc/trunk;module=3Dzaurusd;proto=3Dhttp"
>=20
> diff --git a/meta/recipes-connectivity/avahi/avahi.inc =
b/meta/recipes-connectivity/avahi/avahi.inc
> index b266ea4..5c3b4dd 100644
> --- a/meta/recipes-connectivity/avahi/avahi.inc
> +++ b/meta/recipes-connectivity/avahi/avahi.inc
> @@ -16,7 +16,7 @@ PRIORITY =3D "optional"
> LICENSE =3D "GPLv2+ & LGPLv2.1+"
>=20
> DEPENDS =3D "expat libcap libdaemon dbus glib-2.0 gtk+ libglade"
> -RRECOMMENDS =3D "libnss-mdns"
> +RRECOMMENDS_${PN} =3D "libnss-mdns"
> RRECOMMENDS_avahi-daemon =3D "libnss-mdns"
>=20
> SRC_URI =3D "http://avahi.org/download/avahi-${PV}.tar.gz \
> diff --git a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb =
b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
> index b2e9efb..fb339e7 100644
> --- a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
> +++ b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D2d5025d4aa3495befef8f17206a5b0a1 \
>                     =
file://avahi-client/client.h;endline=3D23;md5=3Df4ac741a25c4f434039ba3e18c=
8674cf"
>=20
> RDEPENDS_avahi-daemon =3D "sysvinit-pidof"
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> EXTRA_OECONF +=3D "--disable-gtk3"
>=20
> diff --git a/meta/recipes-connectivity/gsm/gsmd.inc =
b/meta/recipes-connectivity/gsm/gsmd.inc
> index 9818188..385c40e 100644
> --- a/meta/recipes-connectivity/gsm/gsmd.inc
> +++ b/meta/recipes-connectivity/gsm/gsmd.inc
> @@ -10,7 +10,7 @@ SECTION =3D "libs/gsm"
> PROVIDES +=3D "gsmd"
> RPROVIDES_${PN} =3D "libgsmd0 libgsmd gsmd gsmd-devel"
> PV =3D "0.1+svnr${SRCREV}"
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D =
"svn://svn.openmoko.org/trunk/src/target;module=3Dgsm;proto=3Dhttp \
>            file://fix_machine_init.patch;patch=3D1 \
> @@ -19,7 +19,7 @@ SRC_URI =3D =
"svn://svn.openmoko.org/trunk/src/target;module=3Dgsm;proto=3Dhttp \
> S =3D "${WORKDIR}/gsm"
>=20
> inherit autotools pkgconfig update-rc.d
> -# handle update-rc.d RDEPENDS manually, we don't need it on
> +# handle update-rc.d RDEPENDS_${PN} manually, we don't need it on
> # anything but gsmd
> RDEPENDS_append =3D ""
>=20
> diff --git a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb =
b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
> index 0cdb057..4c94d2a 100644
> --- a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
> +++ b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
> @@ -7,8 +7,8 @@ LICENSE =3D "LGPLv2.1+"
> LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D2d5025d4aa3495befef8f17206a5b0a1"
>=20
> DEPENDS =3D "avahi"
> -RDEPENDS =3D "avahi-daemon"
> -PR =3D "r1"
> +RDEPENDS_${PN} =3D "avahi-daemon"
> +PR =3D "r2"
>=20
> SRC_URI =3D =
"http://0pointer.de/lennart/projects/nss-mdns/nss-mdns-${PV}.tar.gz"
>=20
> diff --git a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb =
b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
> index d86bd0f..a2bac61 100644
> --- a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
> +++ b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
> @@ -10,10 +10,10 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D0636e73ff0215e8d672dc4c32c317bb3"
>=20
> # util-linux for libblkid
> DEPENDS =3D "libcap libnfsidmap libevent util-linux tcp-wrappers"
> -RDEPENDS =3D "portmap"
> -RRECOMMENDS =3D "kernel-module-nfsd"
> +RDEPENDS_${PN} =3D "portmap"
> +RRECOMMENDS_${PN} =3D "kernel-module-nfsd"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D "${SOURCEFORGE_MIRROR}/nfs/nfs-utils-${PV}.tar.bz2 \
>            file://nfs-utils-1.0.6-uclibc.patch \
> diff --git a/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb =
b/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
> index 7980561..aa3684a 100644
> --- a/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
> +++ b/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
> @@ -1,8 +1,8 @@
> SECTION =3D "console/network"
> DESCRIPTION =3D "Enables PPP dial-in through a serial connection"
> DEPENDS =3D "ppp"
> -RDEPENDS =3D "ppp"
> -PR =3D "r5"
> +RDEPENDS_${PN} =3D "ppp"
> +PR =3D "r6"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>                     =
file://${POKYBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420=
"
> diff --git a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb =
b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
> index 16d88dc..02aed1d 100644
> --- a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
> +++ b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
> @@ -10,8 +10,8 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dc93c0550bd3173f4504b2cbd8991e50b"
> AUTHOR =3D "Thomas Hood"
> HOMEPAGE =3D "http://packages.debian.org/resolvconf"
> DEPENDS =3D "bash"
> -RDEPENDS =3D "bash"
> -PR =3D "r1"
> +RDEPENDS_${PN} =3D "bash"
> +PR =3D "r2"
>=20
> SRC_URI =3D =
"${DEBIAN_MIRROR}/main/r/resolvconf/resolvconf_${PV}.tar.gz"
>=20
> diff --git a/meta/recipes-core/glibc/glibc.inc =
b/meta/recipes-core/glibc/glibc.inc
> index ecaf593..e2b681f 100644
> --- a/meta/recipes-core/glibc/glibc.inc
> +++ b/meta/recipes-core/glibc/glibc.inc
> @@ -13,7 +13,7 @@ DEPENDS =3D =
"virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers"
> RDEPENDS_${PN}-dev =3D "linux-libc-headers-dev"
> #this leads to circular deps, so lets not add it yet
> #RDEPENDS_ldd +=3D " bash"
> -#RDEPENDS +=3D "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
> +#RDEPENDS_${PN} +=3D "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
> PROVIDES =3D "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc"
> PROVIDES +=3D "virtual/libintl virtual/libiconv"
>=20
> diff --git a/meta/recipes-core/glibc/glibc_2.10.1.bb =
b/meta/recipes-core/glibc/glibc_2.10.1.bb
> index 364a0e5..6c683ec 100644
> --- a/meta/recipes-core/glibc/glibc_2.10.1.bb
> +++ b/meta/recipes-core/glibc/glibc_2.10.1.bb
> @@ -5,7 +5,7 @@ ARM_INSTRUCTION_SET =3D "arm"
> PACKAGES_DYNAMIC =3D "libc6*"
> RPROVIDES_${PN}-dev =3D "libc6-dev virtual-libc-dev"
>=20
> -PR =3D "r6"
> +PR =3D "r7"
>=20
> # the -isystem in bitbake.conf screws up glibc do_stage
> BUILD_CPPFLAGS =3D "-I${STAGING_INCDIR_NATIVE}"
> diff --git a/meta/recipes-core/initscripts/initscripts_1.0.bb =
b/meta/recipes-core/initscripts/initscripts_1.0.bb
> index 758c607..1d2509e 100644
> --- a/meta/recipes-core/initscripts/initscripts_1.0.bb
> +++ b/meta/recipes-core/initscripts/initscripts_1.0.bb
> @@ -3,10 +3,10 @@ DESCRIPTION =3D "Initscripts provide the basic =
system startup initialization scrip
> SECTION =3D "base"
> PRIORITY =3D "required"
> DEPENDS =3D "makedevs"
> -RDEPENDS =3D "makedevs"
> +RDEPENDS_${PN} =3D "makedevs"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D751419260aa954499f7abaabaa882bbe"
> -PR =3D "r122"
> +PR =3D "r123"
>=20
> SRC_URI =3D "file://functions \
>            file://halt \
> diff --git a/meta/recipes-core/meta/external-python-tarball.bb =
b/meta/recipes-core/meta/external-python-tarball.bb
> index 494b21c..464c457 100644
> --- a/meta/recipes-core/meta/external-python-tarball.bb
> +++ b/meta/recipes-core/meta/external-python-tarball.bb
> @@ -4,6 +4,8 @@ DEPENDS =3D "opkg-native opkg-utils-native =
virtual/fakeroot-native sed-native"
>=20
> inherit meta
>=20
> +PR =3D "r1"
> +
> SDK_DIR =3D "${WORKDIR}/sdk"
> SDK_OUTPUT =3D "${SDK_DIR}/image"
> SDK_DEPLOY =3D "${TMPDIR}/deploy/sdk"
> @@ -33,7 +35,7 @@ TOOLCHAIN_HOST_TASK ?=3D "\
>=20
> TOOLCHAIN_OUTPUTNAME ?=3D "python-nativesdk-standalone-${SDKMACHINE}"
>=20
> -RDEPENDS =3D "${TOOLCHAIN_HOST_TASK}"
> +RDEPENDS_${PN} =3D "${TOOLCHAIN_HOST_TASK}"
>=20
> EXCLUDE_FROM_WORLD =3D "1"
>=20
> diff --git a/meta/recipes-core/meta/meta-toolchain.bb =
b/meta/recipes-core/meta/meta-toolchain.bb
> index 40f8d7e..5eb2ae3 100644
> --- a/meta/recipes-core/meta/meta-toolchain.bb
> +++ b/meta/recipes-core/meta/meta-toolchain.bb
> @@ -17,7 +17,7 @@ TOOLCHAIN_HOST_TASK ?=3D "task-sdk-host =
task-cross-canadian-${TRANSLATED_TARGET_AR
> TOOLCHAIN_TARGET_TASK ?=3D "task-poky-standalone-sdk-target =
task-poky-standalone-sdk-target-dbg"
> TOOLCHAIN_OUTPUTNAME ?=3D "${SDK_NAME}-toolchain-${DISTRO_VERSION}"
>=20
> -RDEPENDS =3D "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
> +RDEPENDS_${PN} =3D "${TOOLCHAIN_TARGET_TASK} ${TOOLCHAIN_HOST_TASK}"
>=20
> EXCLUDE_FROM_WORLD =3D "1"
>=20
> diff --git a/meta/recipes-core/tasks/task-base.bb =
b/meta/recipes-core/tasks/task-base.bb
> index d613bb2..4f8c8d8 100644
> --- a/meta/recipes-core/tasks/task-base.bb
> +++ b/meta/recipes-core/tasks/task-base.bb
> @@ -2,7 +2,7 @@ DESCRIPTION =3D "Merge machine and distro options to =
create a basic machine task/p
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>                     =
file://${POKYBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420=
"
> -PR =3D "r69"
> +PR =3D "r70"
>=20
> inherit task
>=20
> @@ -72,8 +72,8 @@ PCMCIA_MANAGER ?=3D =
"${@base_contains('MACHINE_FEATURES', 'kernel26','pcmciautils'
> #
> # those ones can be set in machine config to supply packages needed to =
get machine booting
> #
> -MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?=3D ""
> -MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?=3D ""
> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS_${PN} ?=3D ""
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_${PN} ?=3D ""
>=20
> #
> # task-base contain stuff needed for base system (machine related)
> diff --git a/meta/recipes-core/tasks/task-poky-boot.bb =
b/meta/recipes-core/tasks/task-poky-boot.bb
> index e9c8e8a..3f8bc59 100644
> --- a/meta/recipes-core/tasks/task-poky-boot.bb
> +++ b/meta/recipes-core/tasks/task-poky-boot.bb
> @@ -9,13 +9,13 @@ LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3
> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> DEPENDS =3D "virtual/kernel"
> ALLOW_EMPTY =3D "1"
> -PR =3D "r7"
> +PR =3D "r8"
>=20
> #
> # Set by the machine configuration with packages essential for device =
bootup
> #
> -MACHINE_ESSENTIAL_EXTRA_RDEPENDS ?=3D ""
> -MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS ?=3D ""
> +MACHINE_ESSENTIAL_EXTRA_RDEPENDS_${PN} ?=3D ""
> +MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS_${PN} ?=3D ""
>=20
> RDEPENDS_task-poky-boot =3D "\
>     base-files \
> diff --git a/meta/recipes-devtools/apt/apt_0.7.14.bb =
b/meta/recipes-devtools/apt/apt_0.7.14.bb
> index 54096ef..d2bcde5 100644
> --- a/meta/recipes-devtools/apt/apt_0.7.14.bb
> +++ b/meta/recipes-devtools/apt/apt_0.7.14.bb
> @@ -1,9 +1,9 @@
> DEPENDS =3D "curl db"
> -RDEPENDS =3D "dpkg"
> +RDEPENDS_${PN} =3D "dpkg"
> LIC_FILES_CHKSUM =3D =
"file://COPYING.GPL;md5=3D0636e73ff0215e8d672dc4c32c317bb3"
> require apt.inc
>=20
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> SRC_URI +=3D "file://nodoc.patch \
> 	    file://includes-fix.patch"
> diff --git a/meta/recipes-devtools/distcc/distcc_2.18.3.bb =
b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
> index 1b14a6b..b6b7b78 100644
> --- a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
> +++ b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
> @@ -4,10 +4,10 @@ compilation of C/C++/ObjC code across machines on a =
network."
> SECTION =3D "devel"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f"
> -PR =3D "r5"
> +PR =3D "r6"
>=20
> DEPENDS =3D "avahi gtk+"
> -RRECOMMENDS =3D "avahi-daemon"
> +RRECOMMENDS_${PN} =3D "avahi-daemon"
>=20
> # Upstream change this patch periodically so store locally
> # http://0pointer.de/public/distcc-avahi.patch
> diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb =
b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
> index 3f9195a..ffe6dce 100644
> --- a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
> +++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
> @@ -1,6 +1,6 @@
> require e2fsprogs.inc
>=20
> -PR =3D "r19"
> +PR =3D "r20"
>=20
> SRC_URI +=3D "file://quotefix.patch;patch=3D1 \
>             file://acinclude.m4"
> @@ -34,7 +34,7 @@ do_install () {
> }
>=20
> # blkid used to be part of e2fsprogs but is useful outside, add it
> -# as an RDEPENDS so that anything relying on it being in e2fsprogs
> +# as an RDEPENDS_${PN} so that anything relying on it being in =
e2fsprogs
> # still works
> RDEPENDS_e2fsprogs =3D "e2fsprogs-blkid e2fsprogs-badblocks"
>=20
> diff --git a/meta/recipes-devtools/intltool/intltool.inc =
b/meta/recipes-devtools/intltool/intltool.inc
> index f9bdf93..9df79f5 100644
> --- a/meta/recipes-devtools/intltool/intltool.inc
> +++ b/meta/recipes-devtools/intltool/intltool.inc
> @@ -8,8 +8,8 @@ SRC_URI =3D =
"${GNOME_MIRROR}/intltool/${URLV}/intltool-${PV}.tar.bz2"
> S =3D "${WORKDIR}/intltool-${PV}"
>=20
> DEPENDS =3D "libxml-parser-perl-native"
> -#RDEPENDS =3D "libxml-parser-perl"
> -RRECOMMENDS =3D "perl-modules"
> +#RDEPENDS_${PN} =3D "libxml-parser-perl"
> +RRECOMMENDS_${PN} =3D "perl-modules"
>=20
> inherit autotools pkgconfig
>=20
> diff --git a/meta/recipes-devtools/intltool/intltool_0.40.6.bb =
b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
> index 4b5fe82..88d441c 100644
> --- a/meta/recipes-devtools/intltool/intltool_0.40.6.bb
> +++ b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
> @@ -1,7 +1,7 @@
> require intltool.inc
> LICENSE=3D"GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f"
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI_append =3D " file://intltool-nowarn-0.40.0.patch"
>=20
> diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb =
b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
> index 087d254..2c19b39 100644
> --- a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
> +++ b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
> @@ -5,10 +5,10 @@ PRIORITY =3D "optional"
> LICENSE =3D "GPLv2+"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
>                     =
file://opkg.py;beginline=3D1;endline=3D18;md5=3D15917491ad6bf7acc666ca5f7c=
c1e083"
> -RDEPENDS =3D "python"
> +RDEPENDS_${PN} =3D "python"
> RDEPENDS_virtclass-native =3D ""
> PV =3D "0.1.8+svnr${SRCREV}"
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> SRC_URI =3D =
"svn://svn.openmoko.org/trunk/src/host/;module=3Dopkg-utils;proto=3Dhttp =
\
>            file://index-ignore-filenotfound.patch"
> diff --git a/meta/recipes-devtools/python/python-dbus_0.83.1.bb =
b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
> index d405ffa..fcf638d 100644
> --- a/meta/recipes-devtools/python/python-dbus_0.83.1.bb
> +++ b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
> @@ -4,7 +4,7 @@ HOMEPAGE =3D =
"http://www.freedesktop.org/Software/dbus"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Df5612614133e9a2f2dad527d97554670"
> DEPENDS =3D "expat dbus dbus-glib virtual/libintl python-pyrex-native"
> -PR =3D "ml0"
> +PR =3D "ml1"
>=20
> SRC_URI =3D =
"http://dbus.freedesktop.org/releases/dbus-python/dbus-python-${PV}.tar.gz=
"
>=20
> @@ -20,6 +20,6 @@ export HOST_SYS
> export STAGING_LIBDIR
> export STAGING_INCDIR
>=20
> -RDEPENDS =3D "python-io python-logging python-stringold =
python-threading python-xml"
> +RDEPENDS_${PN} =3D "python-io python-logging python-stringold =
python-threading python-xml"
>=20
> FILES_${PN}-dev +=3D "${libdir}/pkgconfig=20
> diff --git a/meta/recipes-devtools/python/python-gst_0.10.19.bb =
b/meta/recipes-devtools/python/python-gst_0.10.19.bb
> index 16852d1..22d6339 100644
> --- a/meta/recipes-devtools/python/python-gst_0.10.19.bb
> +++ b/meta/recipes-devtools/python/python-gst_0.10.19.bb
> @@ -2,8 +2,8 @@ DESCRIPTION =3D "Python Gstreamer bindings"
> SECTION =3D "devel/python"
> LICENSE =3D "LGPLv2.1"
> DEPENDS =3D "gstreamer gst-plugins-base python-pygobject"
> -RDEPENDS +=3D "python-pygtk"
> -PR =3D "r0"
> +RDEPENDS_${PN} +=3D "python-pygtk"
> +PR =3D "r1"
>=20
> SRC_URI =3D =
"http://gstreamer.freedesktop.org/src/gst-python/gst-python-${PV}.tar.bz2 =
\
>            file://python-path.patch"
> diff --git a/meta/recipes-devtools/python/python-imaging_1.1.7.bb =
b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
> index bd6fe1d..ce3b977 100644
> --- a/meta/recipes-devtools/python/python-imaging_1.1.7.bb
> +++ b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
> @@ -4,9 +4,9 @@ PRIORITY =3D "optional"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D =
"file://README;beginline=3D92;endline=3D120;md5=3Dc4371af4579f1e489cf881c1=
443dd4ec"
> DEPENDS =3D "freetype jpeg tiff"
> -RDEPENDS =3D "python-lang python-stringold"
> +RDEPENDS_${PN} =3D "python-lang python-stringold"
> SRCNAME =3D "Imaging"
> -PR =3D "ml0"
> +PR =3D "ml1"
>=20
> SRC_URI =3D "http://effbot.org/downloads/Imaging-${PV}.tar.gz \
>            file://path.patch"
> diff --git a/meta/recipes-devtools/python/python-pycurl_7.19.0.bb =
b/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
> index c8841f4..b868ad8 100644
> --- a/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
> +++ b/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
> @@ -8,9 +8,9 @@ LIC_FILES_CHKSUM =3D =
"file://README;endline=3D13;md5=3Dfbfe545b1869617123a08c0983ef17b
>                     =
file://COPYING2;md5=3Dffaa1e283b7f9bf5aafd8d45db6f7518"
>=20
> DEPENDS =3D "curl python"
> -RDEPENDS =3D "python-core curl"
> +RDEPENDS_${PN} =3D "python-core curl"
> SRCNAME =3D "pycurl"
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D "\
>   =
http://${SRCNAME}.sourceforge.net/download/${SRCNAME}-${PV}.tar.gz;name=3D=
archive \
> diff --git a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb =
b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
> index c32d998..f56e1fe 100644
> --- a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
> +++ b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
> @@ -2,12 +2,12 @@ DESCRIPTION =3D "Python GTK+ 2.17.x Bindings"
> SECTION =3D "devel/python"
> # needs gtk+ 2.17.x
> DEPENDS =3D "gtk+ libglade python-pycairo python-pygobject"
> -RDEPENDS =3D "python-shell python-pycairo python-pygobject"
> +RDEPENDS_${PN} =3D "python-shell python-pycairo python-pygobject"
> PROVIDES =3D "python-pygtk2"
> SRCNAME =3D "pygtk"
> LICENSE =3D "LGPLv2.1"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Da916467b91076e631dd8edb7424769c7"
> -PR =3D "ml8.3"
> +PR =3D "ml9"
>=20
> SRC_URI =3D =
"ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.17/${SRCNAME}-${PV}.tar.bz2=
 \
>            file://fix-gtkunixprint.patch \
> diff --git a/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb =
b/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb
> index 90b6b16..8276354 100644
> --- a/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb
> +++ b/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb
> @@ -1,5 +1,5 @@
> require python-pyrex_${PV}.bb
> inherit native
> DEPENDS =3D "python-native"
> -RDEPENDS =3D ""
> -PR =3D "r0"
> +RDEPENDS_${PN} =3D ""
> +PR =3D "r1"
> diff --git a/meta/recipes-devtools/python/python-scons-native_2.0.1.bb =
b/meta/recipes-devtools/python/python-scons-native_2.0.1.bb
> index a4bcd42..f7646a2 100644
> --- a/meta/recipes-devtools/python/python-scons-native_2.0.1.bb
> +++ b/meta/recipes-devtools/python/python-scons-native_2.0.1.bb
> @@ -1,6 +1,6 @@
> require python-scons_${PV}.bb
> inherit native
> DEPENDS =3D "python-native"
> -RDEPENDS =3D ""
> -PR =3D "r0"
> +RDEPENDS_${PN} =3D ""
> +PR =3D "r1"
>=20
> diff --git a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb =
b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
> index 19fb6f4..aae96ab 100644
> --- a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
> +++ b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
> @@ -1,7 +1,7 @@
> DESCRIPTION =3D "Qemu helper utilities from Poky"
> LICENSE =3D "GPLv2"
> -RDEPENDS =3D "qemu-native"
> -PR =3D "r0"
> +RDEPENDS_${PN} =3D "qemu-native"
> +PR =3D "r1"
>=20
> FILESPATH =3D "${FILE_DIRNAME}/qemu-helper"
>=20
> diff --git a/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb =
b/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb
> index 7914656..16c3fb4 100644
> --- a/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb
> +++ b/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb
> @@ -1,7 +1,7 @@
> DESCRIPTION =3D "Qemu helper scripts from Poky"
> LICENSE =3D "GPL"
> -RDEPENDS =3D "qemu-nativesdk"
> -PR =3D "r8"
> +RDEPENDS_${PN} =3D "qemu-nativesdk"
> +PR =3D "r9"
>=20
> FILESPATH =3D "${FILE_DIRNAME}/qemu-helper"
>=20
> diff --git a/meta/recipes-devtools/subversion/subversion_1.6.13.bb =
b/meta/recipes-devtools/subversion/subversion_1.6.13.bb
> index bcdb6c2..b535f06 100644
> --- a/meta/recipes-devtools/subversion/subversion_1.6.13.bb
> +++ b/meta/recipes-devtools/subversion/subversion_1.6.13.bb
> @@ -1,11 +1,11 @@
> DESCRIPTION =3D "The Subversion (svn) client"
> SECTION =3D "console/network"
> DEPENDS =3D "apr-util neon"
> -RDEPENDS =3D "neon"
> +RDEPENDS_${PN} =3D "neon"
> LICENSE =3D "Apache BSD"
> HOMEPAGE =3D "http://subversion.tigris.org"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D "http://subversion.tigris.org/downloads/${P}.tar.bz2 \
>            file://disable-revision-install.patch;patch=3D1 \
> diff --git a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb =
b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
> index 6897f18..28a9e6f 100644
> --- a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
> +++ b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
> @@ -3,9 +3,9 @@ HOMEPAGE =3D "http://code.google.com/p/ubootchart/"
> LICENSE =3D "GPLv3"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D8f0e2cd40e05189ec81232da84bd6e1a"
> PV =3D "0.0+r${SRCREV}"
> -PR =3D "r4"
> +PR =3D "r5"
>=20
> -#RRECOMMENDS =3D "acct"
> +#RRECOMMENDS_${PN} =3D "acct"
>=20
> SRC_URI =3D =
"svn://ubootchart.googlecode.com/svn/;proto=3Dhttp;module=3Dtrunk \
>         file://sysvinit.patch;patch=3D1;pnum=3D0 \
> diff --git =
a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb =
b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> index 89313d6..50ba339 100644
> --- a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> +++ b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> @@ -3,10 +3,10 @@ SECTION =3D "console/network"
> LICENSE =3D "GPLv2+"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D8ca43cbc842c2336e835926c2166c28b"
>=20
> -RDEPENDS =3D "pseudo"
> +RDEPENDS_${PN} =3D "pseudo"
> RDEPENDS_virtclass-native =3D "pseudo-native"
> RDEPENDS_virtclass-nativesdk =3D "pseudo-nativesdk"
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> SRC_URI =3D =
"ftp://linux.mathematik.tu-darmstadt.de/pub/linux/oldstuff/people/okir/nfs=
-server-${PV}.tar.gz \
>            file://001-2.2b47-2.2b51.patch \
> diff --git =
a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb =
b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb
> index 5d38d5d..9943aa8 100644
> --- =
a/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb
> +++ =
b/meta/recipes-devtools/update-alternatives/update-alternatives-dpkg_1.13.=
22.bb
> @@ -1,7 +1,9 @@
> require update-alternatives-dpkg.inc
>=20
> +PR =3D "r1"
> +
> PROVIDES +=3D "virtual/update-alternatives"
> RPROVIDES_${PN} +=3D "update-alternatives"
> -EXTRA_RDEPENDS =3D "perl dpkg"
> +EXTRA_RDEPENDS_${PN} =3D "perl dpkg"
> EXTRA_RDEPENDS_virtclass-native =3D ""
> RDEPENDS_${PN} +=3D "${EXTRA_RDEPENDS}"
> diff --git a/meta/recipes-extended/libzypp/libzypp_git.bb =
b/meta/recipes-extended/libzypp/libzypp_git.bb
> index e295569..6918263 100644
> --- a/meta/recipes-extended/libzypp/libzypp_git.bb
> +++ b/meta/recipes-extended/libzypp/libzypp_git.bb
> @@ -9,11 +9,11 @@ inherit cmake
> DEPENDS  =3D "rpm boost gettext curl libxml2 zlib sat-solver expat =
openssl udev"
>=20
> # rpmdb2solv from sat-solver is run from libzypp
> -RDEPENDS =3D "sat-solver"
> +RDEPENDS_${PN} =3D "sat-solver"
>=20
> S =3D "${WORKDIR}/git"
> PV =3D "0.0-git${SRCPV}"
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> SRC_URI =3D "git://gitorious.org/opensuse/libzypp.git;protocol=3Dgit \
>            file://no-doc.patch \
> diff --git a/meta/recipes-extended/man-pages/man-pages_3.25.bb =
b/meta/recipes-extended/man-pages/man-pages_3.25.bb
> index b5b200c..358f78d 100644
> --- a/meta/recipes-extended/man-pages/man-pages_3.25.bb
> +++ b/meta/recipes-extended/man-pages/man-pages_3.25.bb
> @@ -4,7 +4,7 @@ SECTION =3D "console/utils"
> PRIORITY =3D "required"
> HOMEPAGE =3D "http://www.kernel.org/pub/linux/docs/man-pages"
> LICENSE =3D "GPL"
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> LIC_FILES_CHKSUM =3D =
"file://README;md5=3D9dab010c5baa416669e5d17381799dd5"
> SRC_URI =3D =
"http://www.kernel.org/pub/linux/docs/man-pages/Archive/${PN}-${PV}.tar.gz=
"
> @@ -12,7 +12,7 @@ SRC_URI =3D =
"http://www.kernel.org/pub/linux/docs/man-pages/Archive/${PN}-${PV}.ta
> SRC_URI[md5sum] =3D "98ec2324abea77d7a992470dd44d140c"
> SRC_URI[sha256sum] =3D =
"474242842a78dc2121687b7db6c32b6c78af5458f2bd809e23563dd185e2b169"
>=20
> -RDEPENDS =3D "man"
> +RDEPENDS_${PN} =3D "man"
>=20
> do_configure_prepend() {
> 	rm -rf not_installed
> diff --git a/meta/recipes-extended/mc/mc_4.7.3.bb =
b/meta/recipes-extended/mc/mc_4.7.3.bb
> index 22a1a93..537aa05 100644
> --- a/meta/recipes-extended/mc/mc_4.7.3.bb
> +++ b/meta/recipes-extended/mc/mc_4.7.3.bb
> @@ -4,7 +4,9 @@ LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552"
> SECTION =3D "console/utils"
> DEPENDS =3D "ncurses glib-2.0"
> -RDEPENDS =3D "ncurses-terminfo"
> +RDEPENDS_${PN} =3D "ncurses-terminfo"
> +
> +PR =3D "r1"
>=20
> SRC_URI =3D =
"http://www.midnight-commander.org/downloads/${PN}-${PV}.tar.bz2"
>=20
> diff --git a/meta/recipes-extended/polkit/polkit_0.99.bb =
b/meta/recipes-extended/polkit/polkit_0.99.bb
> index f578cca..7f96979 100644
> --- a/meta/recipes-extended/polkit/polkit_0.99.bb
> +++ b/meta/recipes-extended/polkit/polkit_0.99.bb
> @@ -7,9 +7,9 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D155db86cdbafa7532b41f390409283eb \
>                     =
file://docs/polkit/html/license.html;md5=3D54750ec6ece444c50b823234d445dd9=
9"
>=20
> SRC_URI =3D "http://hal.freedesktop.org/releases/polkit-${PV}.tar.gz"
> -PR =3D "r0"
> +PR =3D "r1"
> DEPENDS =3D "libpam expat dbus-glib eggdbus intltool"
> -RDEPENDS =3D "libpam"
> +RDEPENDS_${PN} =3D "libpam"
> EXTRA_OECONF =3D "--with-authfw=3Dpam --with-os-type=3Dmoblin =
--disable-man-pages --disable-gtk-doc --disable-introspection"
>=20
> inherit autotools pkgconfig
> diff --git a/meta/recipes-extended/shadow/shadow.inc =
b/meta/recipes-extended/shadow/shadow.inc
> index fcbcb3e..42f92a7 100644
> --- a/meta/recipes-extended/shadow/shadow.inc
> +++ b/meta/recipes-extended/shadow/shadow.inc
> @@ -20,7 +20,7 @@ PAM_PLUGINS =3D "  libpam-runtime \
>                  pam-plugin-rootok"
>=20
> DEPENDS =3D "${@base_contains('DISTRO_FEATURES', 'pam', 'libpam', '', =
d)}"
> -RDEPENDS =3D "${@base_contains('DISTRO_FEATURES', 'pam', =
'${PAM_PLUGINS}', '', d)}"
> +RDEPENDS_${PN} =3D "${@base_contains('DISTRO_FEATURES', 'pam', =
'${PAM_PLUGINS}', '', d)}"
>=20
> # since we deduce from ${SERIAL_CONSOLE}
> PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> diff --git a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb =
b/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
> index ca5f533..224ae5e 100644
> --- a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
> +++ b/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
> @@ -1,6 +1,6 @@
> require shadow.inc
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI +=3D "file://shadow.automake-1.11.patch \
> 	    file://shadow-4.1.3-dots-in-usernames.patch \
> diff --git a/meta/recipes-extended/zypper/zypper_git.bb =
b/meta/recipes-extended/zypper/zypper_git.bb
> index 8caf4db..c8895e5 100644
> --- a/meta/recipes-extended/zypper/zypper_git.bb
> +++ b/meta/recipes-extended/zypper/zypper_git.bb
> @@ -5,8 +5,8 @@ LICENSE  =3D "GPLv2+"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D3201406e350b39e05a82e28b5020f413"
>=20
> DEPENDS  =3D "libzypp augeas"
> -RRECOMMENDS =3D "procps"
> -PR =3D "r1"
> +RRECOMMENDS_${PN} =3D "procps"
> +PR =3D "r2"
>=20
> inherit cmake
>=20
> diff --git a/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb =
b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
> index 9898428..17fff1c 100644
> --- a/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
> +++ b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
> @@ -7,9 +7,9 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3De7e289d90fc8bdceed5e3f142f98229e"
>=20
> SECTION =3D "x11/gnome"
> DEPENDS =3D "icon-naming-utils-native glib-2.0 intltool-native"
> -RDEPENDS =3D "hicolor-icon-theme"
> -RRECOMMENDS =3D "librsvg-gtk"
> -PR =3D "r0"
> +RDEPENDS_${PN} =3D "hicolor-icon-theme"
> +RRECOMMENDS_${PN} =3D "librsvg-gtk"
> +PR =3D "r1"
>=20
> FILES_${PN} +=3D "${datadir}/*"
>=20
> diff --git a/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb =
b/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
> index 153979e..5932ddd 100644
> --- a/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
> +++ b/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
> @@ -11,12 +11,12 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
>=20
> SECTION =3D "x11/gnome"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> inherit autotools gnome pkgconfig
>=20
> DEPENDS =3D "gtk+ libgcrypt libtasn1 libtasn1-native gconf"
> -RDEPENDS =3D "libgnome-keyring"
> +RDEPENDS_${PN} =3D "libgnome-keyring"
>=20
> EXTRA_OECONF =3D "--disable-gtk-doc"
>=20
> diff --git a/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb =
b/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
> index 3bb50d1..b730dae 100644
> --- a/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
> +++ b/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
> @@ -8,7 +8,7 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552 \
>=20
> inherit gnome
> inherit autotools
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> SRC_URI +=3D "file://pkgconfig.patch;patch=3D1"
>=20
> @@ -16,4 +16,4 @@ SRC_URI[archive.md5sum] =3D =
"541858188f80090d12a33b5a7c34d42c"
> SRC_URI[archive.sha256sum] =3D =
"37196b5b37085bbcd45c338c36e26898fe35dd5975295f69f48028b1e8436fd7"
>=20
> DEPENDS +=3D "shared-mime-info intltool-native"
> -RDEPENDS =3D "shared-mime-info"
> +RDEPENDS_${PN} =3D "shared-mime-info"
> diff --git =
a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb =
b/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
> index c88a795..0c8506a 100644
> --- a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
> +++ b/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
> @@ -4,10 +4,10 @@ DEPENDS =3D "jpeg-native libpng-native =
gettext-native glib-2.0-native libx11-nativ
> S =3D "${WORKDIR}/gtk+-${PV}"
> FILESPATH =3D =
"${FILE_DIRNAME}/gdk-pixbuf-csource:${FILE_DIRNAME}/gtk+-${PV}:${FILE_DIRN=
AME}/files"
> SRC_URI +=3D "file://reduce-dependencies.patch;patch=3D1"
> -PR =3D "r11"
> +PR =3D "r13"
>=20
> #clear recommends for uclibc builds
> -RRECOMMENDS =3D " "
> +RRECOMMENDS_${PN} =3D " "
> RRECOMMENDS_${PN}_linux =3D "  "
> RRECOMMENDS_${PN}_linux-gnueabi =3D " "
>=20
> diff --git a/meta/recipes-gnome/gtk+/gtk+.inc =
b/meta/recipes-gnome/gtk+/gtk+.inc
> index c34283e..ac7795e 100644
> --- a/meta/recipes-gnome/gtk+/gtk+.inc
> +++ b/meta/recipes-gnome/gtk+/gtk+.inc
> @@ -35,7 +35,7 @@ FILES_${PN}-dbg +=3D " \
> 	${libdir}/gtk-2.0/${LIBV}/engines/.debug/* \
> 	${libdir}/gtk-2.0/${LIBV}/printbackends/.debug/*"
>=20
> -BASE_RRECOMMENDS =3D "ttf-dejavu-sans"
> +BASE_RRECOMMENDS_${PN} =3D "ttf-dejavu-sans"
> BASE_RRECOMMENDS_angstrom =3D "ttf-dejavu-sans gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm"
> BASE_RRECOMMENDS_poky =3D "gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm =
shared-mime-info"
> BASE_RRECOMMENDS_moblin =3D "gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm =
shared-mime-info"
> diff --git a/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb =
b/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
> index d829308..12193f9 100644
> --- a/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
> +++ b/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
> @@ -1,6 +1,6 @@
> require gtk+.inc
>=20
> -PR =3D "r9"
> +PR =3D "r10"
>=20
> SRC_URI =3D =
"http://download.gnome.org/sources/gtk+/2.12/gtk+-${PV}.tar.bz2 \
>            file://xsettings.patch;patch=3D1 \
> diff --git a/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb =
b/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
> index becd2bc..1864d1b 100644
> --- a/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
> +++ b/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
> @@ -1,6 +1,6 @@
> require gtk+.inc
>=20
> -PR =3D "r5"
> +PR =3D "r6"
>=20
> SRC_URI =3D =
"http://download.gnome.org/sources/gtk+/2.16/gtk+-${PV}.tar.bz2 \
>            file://xsettings.patch;patch=3D1 \
> diff --git a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb =
b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
> index dec5187..80be21c 100644
> --- a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
> +++ b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
> @@ -4,7 +4,7 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D3bf50002aefd002f49e7bb854063f7e7 \
>                     =
file://gtk/gtk.h;endline=3D27;md5=3Dc59e0b4490dd135a5726ebf851f9b17f \
>                     =
file://gdk/gdk.h;endline=3D27;md5=3D07db285ec208fb3e0bf7d861b0614202 \
>                     =
file://tests/testgtk.c;endline=3D27;md5=3D262db5db5f776f9863e56df31423e24c=
"
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> SRC_URI =3D =
"http://download.gnome.org/sources/gtk+/2.20/gtk+-${PV}.tar.bz2 \
>            file://xsettings.patch;patch=3D1 \
> diff --git a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb =
b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
> index b3b5ebb..d009e4e 100644
> --- a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
> +++ b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
> @@ -6,7 +6,7 @@ DESCRIPTION =3D "Gnome Mobile And Embedded Software =
Development Kit for OpenedHand
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>                     =
file://${POKYBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420=
"
> -PR =3D "r9"
> +PR =3D "r10"
>=20
> ALLOW_EMPTY =3D "1"
>=20
> @@ -14,7 +14,7 @@ require task-sdk-gmae.inc
>=20
> PACKAGES =3D "${PN}"
>=20
> -RDEPENDS =3D "\
> +RDEPENDS_${PN} =3D "\
>     task-poky-sdk \
>     libglade-dev \
>     ${SDK-GMAE} \
> diff --git =
a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb =
b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
> index cf81bf3..7dcad61 100644
> --- a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
> +++ b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
> @@ -6,7 +6,7 @@ DESCRIPTION =3D "Gnome Mobile And Embedded Software =
Development Kit for OpenedHand
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D =
"file://${POKYBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>                     =
file://${POKYBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de20420=
"
> -PR =3D "r11"
> +PR =3D "r12"
>=20
> ALLOW_EMPTY =3D "1"
>=20
> @@ -14,7 +14,7 @@ require task-sdk-gmae.inc
>=20
> PACKAGES =3D "${PN} ${PN}-dbg"
>=20
> -RDEPENDS =3D "\
> +RDEPENDS_${PN} =3D "\
>     task-poky-standalone-sdk-target \
>     libglade-dev \
>     ${SDK-GMAE} \
> diff --git a/meta/recipes-graphics/cairo/cairo_1.10.0.bb =
b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
> index d4d0703..59e5ff9 100644
> --- a/meta/recipes-graphics/cairo/cairo_1.10.0.bb
> +++ b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
> @@ -2,14 +2,14 @@ require cairo.inc
>=20
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3De73e999e0c72b5ac9012424fa157ad77"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D "http://cairographics.org/releases/cairo-${PV}.tar.gz"
>=20
> SRC_URI[md5sum] =3D "70a2ece66cf473d976e2db0f75bf199e"
> SRC_URI[sha256sum] =3D =
"0f2ce4cc4615594088d74eb8b5360bad7c3cc3c3da9b61af9bfd979ed1ed94b2"
>=20
> -RDEPENDS +=3D "libcairo2 libcairo-gobject2 =
libcairo-script-interpreter2 \
> +RDEPENDS_${PN} +=3D "libcairo2 libcairo-gobject2 =
libcairo-script-interpreter2 \
> 		  cairo-perf-utils"
>=20
> ALLOW_EMPTY =3D "1"
> diff --git a/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb =
b/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb
> index 633a4c2..f70aae3 100644
> --- a/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb
> +++ b/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb
> @@ -3,8 +3,8 @@ HOMEPAGE =3D "http://www.libsdl.org"
> SECTION =3D "libs"
> LICENSE =3D "LGPL"
> DEPENDS =3D "libx11-nativesdk libxext-nativesdk libxrandr-nativesdk =
libxrender-nativesdk"
> -RDEPENDS =3D "libx11-nativesdk libxrandr-nativesdk =
libxrender-nativesdk libxext-nativesdk"
> -PR =3D "r4"
> +RDEPENDS_${PN} =3D "libx11-nativesdk libxrandr-nativesdk =
libxrender-nativesdk libxext-nativesdk"
> +PR =3D "r5"
>=20
> SRC_URI =3D "http://www.libsdl.org/release/SDL-${PV}.tar.gz \
> 	   file://acinclude.m4 \
> diff --git a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb =
b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
> index 729c2a5..aebc11d 100644
> --- a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
> +++ b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
> @@ -3,8 +3,9 @@ require xorg-app-common.inc
> DESCRIPTION =3D "a program to create an index of X font files in a =
directory"
>=20
> PE =3D "1"
> +PR =3D "r1"
>=20
> -RDEPENDS +=3D "mkfontscale"
> +RDEPENDS_${PN} +=3D "mkfontscale"
>=20
> BBCLASSEXTEND =3D "native"
>=20
> diff --git a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb =
b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
> index f3b3716..7a2ddb6 100644
> --- a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
> +++ b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
> @@ -10,11 +10,11 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dbf0158b89be493d523d69d9f29265038 \
>                     =
file://100dpi/fonts.alias;md5=3D85bebd6ca213aa656c301a72eb4397cb"
>=20
> DEPENDS =3D "virtual/xserver font-util"
> -RDEPENDS =3D "encodings font-util"
> +RDEPENDS_${PN} =3D "encodings font-util"
> RDEPENDS_virtclass-native =3D "font-util"
>=20
> PE =3D "1"
> -PR =3D "${INC_PR}.0"
> +PR =3D "${INC_PR}.1"
>=20
> SRC_URI[md5sum] =3D "6d25f64796fef34b53b439c2e9efa562"
> SRC_URI[sha256sum] =3D =
"8b453b2aae1cfa8090009ca037037b8c5e333550651d5a158b7264ce1d472c9a"
> diff --git a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb =
b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
> index 972e9e3..14ba51a 100644
> --- a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
> +++ b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
> @@ -12,10 +12,10 @@ PACKAGE_ARCH =3D "${BASE_PACKAGE_ARCH}"
>=20
> DEPENDS =3D "encodings util-macros"
> DEPENDS_virtclass-native =3D "util-macros-native"
> -RDEPENDS =3D "mkfontdir mkfontscale encodings"
> +RDEPENDS_${PN} =3D "mkfontdir mkfontscale encodings"
> RDEPENDS_virtclass-native =3D "mkfontdir-native mkfontscale-native"
>=20
> -PR =3D "${INC_PR}.0"
> +PR =3D "${INC_PR}.1"
>=20
> do_configure_prepend() {
>         sed -i =
"s#MAPFILES_PATH=3D\`pkg-config#MAPFILES_PATH=3D\`PKG_CONFIG_PATH=3D\"${ST=
AGING_LIBDIR_NATIVE}/pkg-config\" pkg-config#g" fontutil.m4.in
> diff --git a/meta/recipes-graphics/xorg-font/xorg-font-common.inc =
b/meta/recipes-graphics/xorg-font/xorg-font-common.inc
> index c2175a9..5d19b4c 100644
> --- a/meta/recipes-graphics/xorg-font/xorg-font-common.inc
> +++ b/meta/recipes-graphics/xorg-font/xorg-font-common.inc
> @@ -5,10 +5,10 @@ SECTION =3D "x11/fonts"
> LICENSE =3D "MIT-X"
>=20
> DEPENDS =3D " encodings font-alias font-util-native mkfontdir-native =
mkfontscale-native"
> -RDEPENDS =3D "encodings font-util font-alias"
> +RDEPENDS_${PN} =3D "encodings font-util font-alias"
>=20
> XORG_PN =3D "${BPN}"
> -INC_PR =3D "r1"
> +INC_PR =3D "r2"
>=20
> SRC_URI =3D "${XORG_MIRROR}/individual/font/${XORG_PN}-${PV}.tar.bz2"
> S =3D "${WORKDIR}/${XORG_PN}-${PV}"
> diff --git a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb =
b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
> index 9b89400..a42745f 100644
> --- a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
> +++ b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
> @@ -2,9 +2,9 @@ require xorg-util-common.inc
> LIC_FILES_CHKSUM =3D =
"file://Makefile.am;endline=3D20;md5=3D23c277396d690413245ebb89b18c5d4d"
> DESCRIPTION =3D "create dependencies in makefiles using 'gcc -M'"
> DEPENDS =3D "util-macros"
> -RDEPENDS =3D "gcc"
> +RDEPENDS_${PN} =3D "gcc"
>=20
> -PR =3D "r2"
> +PR =3D "r3"
> PE =3D "1"
>=20
> SRC_URI[md5sum] =3D "fc49f45251c1336fe1dad5dba1c83fcd"
> diff --git a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb =
b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
> index 8943c2d..d770590 100644
> --- a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
> +++ b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
> @@ -2,11 +2,11 @@ require xorg-util-common.inc
>=20
> DESCRIPTION =3D "C preprocessor interface to the make utility"
> DEPENDS =3D "util-macros"
> -RDEPENDS =3D "perl xproto"
> +RDEPENDS_${PN} =3D "perl xproto"
>=20
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Db9c6cfb044c6d0ff899eaafe4c729367"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
> PE =3D "1"
>=20
> SRC_URI[md5sum] =3D "0fd1e53d94142ddee5340f87de0b9561"
> diff --git a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb =
b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
> index 85e065f..eb707e0 100644
> --- a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
> +++ b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
> @@ -12,10 +12,10 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
> SECTION =3D "devel"
>=20
> DEPENDS =3D "popt binutils"
> -RDEPENDS =3D "binutils-symlinks"
> -RRECOMMENDS =3D "kernel-vmlinux"
> +RDEPENDS_${PN} =3D "binutils-symlinks"
> +RRECOMMENDS_${PN} =3D "kernel-vmlinux"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D "${SOURCEFORGE_MIRROR}/oprofile/oprofile-${PV}.tar.gz \
>            file://opstart.patch \
> diff --git a/meta/recipes-kernel/oprofile/oprofile_cvs.bb =
b/meta/recipes-kernel/oprofile/oprofile_cvs.bb
> index f2ff5ad..f2b5520 100644
> --- a/meta/recipes-kernel/oprofile/oprofile_cvs.bb
> +++ b/meta/recipes-kernel/oprofile/oprofile_cvs.bb
> @@ -1,13 +1,13 @@
> PV =3D "0.9.4+cvs${SRCDATE}"
> -PR =3D "r0"
> +PR =3D "r1"
> SECTION =3D "devel"
> SUMMARY =3D "System-Wide Profiler"
> DESCRIPTION =3D "OProfile is a system-wide profiler for Linux systems, =
capable \
> of profiling all running code at low overhead."
> LICENSE =3D "GPL"
> DEPENDS =3D "popt binutils"
> -RDEPENDS =3D "binutils-symlinks"
> -RRECOMMENDS =3D "kernel-vmlinux"
> +RDEPENDS_${PN} =3D "binutils-symlinks"
> +RRECOMMENDS_${PN} =3D "kernel-vmlinux"
>=20
> DEFAULT_PREFERENCE =3D "-1"
>=20
> diff --git a/meta/recipes-kernel/update-modules/update-modules_1.0.bb =
b/meta/recipes-kernel/update-modules/update-modules_1.0.bb
> index 93bc149..a473bb5 100644
> --- a/meta/recipes-kernel/update-modules/update-modules_1.0.bb
> +++ b/meta/recipes-kernel/update-modules/update-modules_1.0.bb
> @@ -4,8 +4,8 @@ LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://${WORKDIR}/COPYING.GPL;md5=3D751419260aa954499f7abaabaa882bbe"
>=20
> PACKAGE_ARCH =3D "all"
> -RDEPENDS =3D "${@base_contains("MACHINE_FEATURES", "kernel26",  =
"module-init-tools-depmod","modutils-depmod",d)} "
> -PR =3D "r7"
> +RDEPENDS_${PN} =3D "${@base_contains("MACHINE_FEATURES", "kernel26",  =
"module-init-tools-depmod","modutils-depmod",d)} "
> +PR =3D "r8"
>=20
> SRC_URI =3D "file://update-modules \
>            file://COPYING.GPL"
> @@ -25,7 +25,7 @@ do_install() {
> # The Unslung distro uses a 2.4 kernel for a machine (the NSLU2) which
> # supports both 2.4 and 2.6 kernels.  Rather than forcing OE to have
> # to deal with that unique legacy corner case, we just nullify the
> -# RDEPENDS here and handle it in the Unslung image recipe. I know =
this
> +# RDEPENDS_${PN} here and handle it in the Unslung image recipe. I =
know this
> # is ugly.  Please don't remove it unless you first make the RDEPENDS
> # line at the top of this file understand that a machine can be used
> # in both a 2.4 kernel distro and a 2.6 kernel distro.  Really, it's
> diff --git a/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb =
b/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
> index a4cf815..5eb7e42 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
> +++ b/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
> @@ -1,5 +1,5 @@
> DEPENDS =3D "gstreamer"
> -RDEPENDS =3D "libomxil"
> +RDEPENDS_${PN} =3D "libomxil"
> LICENSE =3D "LGPLv2.1"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dfbc093901857fcd118f065f900982c24 \
>                     =
file://util/sem.h;beginline=3D1;endline=3D20;md5=3Daccce5550d5583b839b441a=
0623f09fc"
> @@ -10,7 +10,7 @@ inherit autotools
>=20
> EXTRA_OECONF +=3D "--disable-valgrind"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> FILES_${PN} +=3D "${libdir}/gstreamer-0.10/libgstomx.so"
> FILES_${PN}-dev +=3D "${libdir}/gstreamer-0.10/libgstomx.*a"
> diff --git =
a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb =
b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
> index 006efdf..cbc13da 100644
> --- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
> +++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
> @@ -7,7 +7,7 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D0636e73ff0215e8d672dc4c32c317bb3 \
>                     =
file://gst/ffmpegcolorspace/utils.c;beginline=3D1;endline=3D20;md5=3D9c83a=
200b8e597b26ca29df20fc6ecd0"
>=20
> DEPENDS +=3D "virtual/libx11 alsa-lib freetype gnome-vfs liboil libogg =
libvorbis libxv libtheora avahi"
> -RDEPENDS +=3D "gnome-vfs-plugin-file gnome-vfs-plugin-http =
gnome-vfs-plugin-ftp \
> +RDEPENDS_${PN} +=3D "gnome-vfs-plugin-file gnome-vfs-plugin-http =
gnome-vfs-plugin-ftp \
>              gnome-vfs-plugin-sftp"
>=20
> SRC_URI +=3D " file://gst-plugins-base-tremor.patch \
> @@ -16,7 +16,7 @@ SRC_URI +=3D " file://gst-plugins-base-tremor.patch =
\
> SRC_URI[md5sum] =3D "3ad90152b58563e1314af26c263f3c4c"
> SRC_URI[sha256sum] =3D =
"63938641380be9935c804ae8d55acdcfd93920ed2deb72dcf70f027a78b085d7"
>=20
> -PR =3D "r2"
> +PR =3D "r3"
>=20
> inherit gettext
>=20
> diff --git a/meta/recipes-qt/qt-apps/fotowall_0.9.bb =
b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
> index 30dca4e..1146ce9 100644
> --- a/meta/recipes-qt/qt-apps/fotowall_0.9.bb
> +++ b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
> @@ -7,8 +7,10 @@ LIC_FILES_CHKSUM =3D =
"file://GPL_V2;md5=3D79808397c3355f163c012616125c9e26 \
>                     =
file://main.cpp;beginline=3D6;endline=3D11;md5=3Db569acc2bf8974a3082b58fc5=
3b9d8dc"
> SECTION =3D "x11/apps"
>=20
> +PR =3D "r1"
> +
> DEPENDS =3D "qt4-x11-free"
> -RDEPENDS =3D "qt4-x11-free"
> +RDEPENDS_${PN} =3D "qt4-x11-free"
>=20
> SRC_URI =3D =
"http://qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9.tar.bz2"
>=20
> diff --git a/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb =
b/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
> index c5afd91..a76f5ff 100644
> --- a/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
> +++ b/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
> @@ -4,10 +4,10 @@ LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D393a5ca445f6965873eca0259a17f833"
> SECTION =3D "multimedia"
>=20
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> DEPENDS =3D "qt4-x11-free taglib"
> -RDEPENDS =3D "qt4-x11-free libmad libvorbis libogg taglib alsa-lib =
curl"
> +RDEPENDS_${PN} =3D "qt4-x11-free libmad libvorbis libogg taglib =
alsa-lib curl"
>=20
> SRC_URI =3D "http://qmmp.ylsoftware.com/files/qmmp-0.4.1.tar.bz2"
>=20
> diff --git a/meta/recipes-qt/qt-apps/quicky_0.4.bb =
b/meta/recipes-qt/qt-apps/quicky_0.4.bb
> index 004e029..54b326d 100644
> --- a/meta/recipes-qt/qt-apps/quicky_0.4.bb
> +++ b/meta/recipes-qt/qt-apps/quicky_0.4.bb
> @@ -4,8 +4,10 @@ LICENSE =3D "GPLv2+"
> LIC_FILES_CHKSUM =3D =
"file://version.h;endline=3D19;md5=3D878bdaff438dab86298301fd1a210e14"
> SECTION =3D "x11/apps"
>=20
> +PR =3D "r1"
> +
> DEPENDS =3D "qt4-x11-free"
> -RDEPENDS =3D "qt4-x11-free"
> +RDEPENDS_${PN} =3D "qt4-x11-free"
>=20
> SRC_URI =3D =
"http://qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz"
>=20
> diff --git a/meta/recipes-sato/eds/eds-tools_bzr.bb =
b/meta/recipes-sato/eds/eds-tools_bzr.bb
> index 0dfcf59..9cead16 100644
> --- a/meta/recipes-sato/eds/eds-tools_bzr.bb
> +++ b/meta/recipes-sato/eds/eds-tools_bzr.bb
> @@ -1,10 +1,10 @@
> LICENSE =3D "GPLv2"
> SECTION =3D "x11"
> DEPENDS =3D "dbus-glib eds-dbus"
> -RDEPENDS =3D "libedata-book"
> +RDEPENDS_${PN} =3D "libedata-book"
> DESCRIPTION =3D "Test applications for EDS"
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D "bzr://burtonini.com/bzr/eds-tools;proto=3Dhttp"
>=20
> diff --git a/meta/recipes-sato/gaku/gaku_svn.bb =
b/meta/recipes-sato/gaku/gaku_svn.bb
> index a70863e..d1e2a3f 100644
> --- a/meta/recipes-sato/gaku/gaku_svn.bb
> +++ b/meta/recipes-sato/gaku/gaku_svn.bb
> @@ -4,12 +4,12 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552 \
>                     =
file://main.c;beginline=3D1;endline=3D20;md5=3D0c02b4ef945956832b37a036b9c=
c103a"
> DEPENDS =3D "gtk+ gstreamer libowl-av"
>=20
> -RDEPENDS =3D "gst-plugins-base-audioconvert \
> +RDEPENDS_${PN} =3D "gst-plugins-base-audioconvert \
>             gst-plugins-base-audioresample \
>             gst-plugins-base-typefindfunctions \
>             gst-plugins-base-playbin"
>=20
> -RRECOMMENDS =3D "gst-plugins-good-id3demux \
> +RRECOMMENDS_${PN} =3D "gst-plugins-good-id3demux \
>                gst-plugins-base-vorbis \
>                gst-plugins-base-alsa \
>                gst-plugins-base-ogg \
> @@ -17,7 +17,7 @@ RRECOMMENDS =3D "gst-plugins-good-id3demux \
>=20
> PV =3D "0.0+svnr${SRCREV}"
>=20
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> SRC_URI =3D =
"svn://svn.o-hand.com/repos/misc/trunk;module=3D${PN};proto=3Dhttp"
>=20
> diff --git =
a/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb =
b/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
> index af748f1..88484eb 100644
> --- a/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
> +++ b/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
> @@ -7,9 +7,10 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
>                     =
file://appearance/mb-appearance.c;endline=3D25;md5=3Dea92333cf8a6802639d62=
d874c114a28"
>=20
> DEPENDS =3D "gconf gtk+"
> -RDEPENDS =3D "settings-daemon"
> +RDEPENDS_${PN} =3D "settings-daemon"
>=20
> PV =3D "0.0+svnr${SRCREV}"
> +PR =3D "r1"
>=20
> S =3D "${WORKDIR}/${PN}"
>=20
> diff --git =
a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb =
b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
> index 0425fec..27686b2 100644
> --- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
> +++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
> @@ -8,10 +8,10 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
>                     =
file://applet/applet.c;endline=3D20;md5=3De9201b3efa0a81a160b88d6feb5cf75b=
"
>=20
> DEPENDS =3D "libfakekey expat libxft gtk+ matchbox-panel-2"
> -RDEPENDS =3D "formfactor dbus-wait"
> +RDEPENDS_${PN} =3D "formfactor dbus-wait"
> SECTION =3D "x11"
> PV =3D "0.0+svnr${SRCREV}"
> -PR =3D "r4"
> +PR =3D "r5"
>=20
> SRC_URI =3D =
"svn://svn.o-hand.com/repos/matchbox/trunk;module=3D${PN};proto=3Dhttp \
>            file://configure_fix.patch;patch=3D1;maxrev=3D1819 \
> diff --git =
a/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb =
b/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
> index 96d644c..a4abea4 100644
> --- a/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
> +++ b/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
> @@ -6,8 +6,8 @@ LICENSE =3D "GPL"
> LIC_FILES_CHKSUM =3D =
"file://session;endline=3D3;md5=3Df8a5c5b9c279e52dc094d10e11c2be63"
>=20
> SECTION =3D "x11"
> -RDEPENDS =3D "formfactor gtk-sato-engine matchbox-theme-sato =
gtk-theme-sato matchbox-panel-2 matchbox-desktop-sato initscripts =
matchbox-session"
> -PR =3D "r27"
> +RDEPENDS_${PN} =3D "formfactor gtk-sato-engine matchbox-theme-sato =
gtk-theme-sato matchbox-panel-2 matchbox-desktop-sato initscripts =
matchbox-session"
> +PR =3D "r28"
>=20
> # This package is architecture specific because the session script is =
modified
> # based on the machine architecture.
> diff --git a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb =
b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
> index 4eeeed6..15bd37a 100644
> --- a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
> +++ b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
> @@ -9,11 +9,11 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dac14b7ca45afea5af040da54db270eb0 \
>=20
> SECTION =3D "x11"
> DEPENDS =3D "gtk+ gstreamer gst-plugins-base"
> -RDEPENDS =3D "gst-meta-base"
> -RRECOMMENDS =3D "gst-meta-audio gst-meta-video"
> +RDEPENDS_${PN} =3D "gst-meta-base"
> +RRECOMMENDS_${PN} =3D "gst-meta-audio gst-meta-video"
>=20
> PV =3D "0.0+svnr${SRCREV}"
> -PR =3D "r5"
> +PR =3D "r6"
>=20
> S =3D "${WORKDIR}/${PN}"
>=20
> diff --git a/meta/recipes-sato/pimlico/contacts.inc =
b/meta/recipes-sato/pimlico/contacts.inc
> index a424295..ce990d7 100644
> --- a/meta/recipes-sato/pimlico/contacts.inc
> +++ b/meta/recipes-sato/pimlico/contacts.inc
> @@ -6,7 +6,7 @@ LICENSE =3D "GPLv2 & GPLv2+ & GPLv3+ "
> SECTION =3D "x11"
> DEPENDS =3D "glib-2.0 gtk+ eds-dbus"
> DEPENDS_append_poky =3D " libowl"
> -RDEPENDS =3D "libedata-book"
> +RDEPENDS_${PN} =3D "libedata-book"
>=20
> inherit autotools pkgconfig
>=20
> diff --git a/meta/recipes-sato/pimlico/contacts_0.9.bb =
b/meta/recipes-sato/pimlico/contacts_0.9.bb
> index 1e46287..a9e3f15 100644
> --- a/meta/recipes-sato/pimlico/contacts_0.9.bb
> +++ b/meta/recipes-sato/pimlico/contacts_0.9.bb
> @@ -1,5 +1,5 @@
> require contacts.inc
>=20
> -PR =3D "r2"
> +PR =3D "r3"
>=20
> SRC_URI =3D+ =
"http://pimlico-project.org/sources/${PN}/${PN}-${PV}.tar.gz"
> diff --git a/meta/recipes-sato/pimlico/contacts_git.bb =
b/meta/recipes-sato/pimlico/contacts_git.bb
> index c375435..0d2e235 100644
> --- a/meta/recipes-sato/pimlico/contacts_git.bb
> +++ b/meta/recipes-sato/pimlico/contacts_git.bb
> @@ -6,7 +6,7 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
>                     =
file://src/contacts-gtk.c;endline=3D23;md5=3De1ee9b9e72045f2d3aa44cf17313b=
46e"
>=20
> PV =3D "0.12+git${SRCPV}"
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> S =3D "${WORKDIR}/git"
>=20
> diff --git a/meta/recipes-sato/pimlico/dates.inc =
b/meta/recipes-sato/pimlico/dates.inc
> index 6ef7b60..01ab409 100644
> --- a/meta/recipes-sato/pimlico/dates.inc
> +++ b/meta/recipes-sato/pimlico/dates.inc
> @@ -6,7 +6,7 @@ LICENSE =3D "GPLv2 & GPLv2+ & LGPLv2+"
>=20
> SECTION =3D "x11"
> DEPENDS =3D "glib-2.0 gtk+ libglade eds-dbus"
> -RDEPENDS =3D "libedata-cal"
> +RDEPENDS_${PN} =3D "libedata-cal"
>=20
> inherit autotools pkgconfig gtk-icon-cache
>=20
> diff --git a/meta/recipes-sato/pimlico/dates_0.4.8.bb =
b/meta/recipes-sato/pimlico/dates_0.4.8.bb
> index 13afc15..ca88a73 100644
> --- a/meta/recipes-sato/pimlico/dates_0.4.8.bb
> +++ b/meta/recipes-sato/pimlico/dates_0.4.8.bb
> @@ -1,5 +1,5 @@
> require dates.inc
>=20
> -PR =3D "r3"
> +PR =3D "r4"
>=20
> SRC_URI =3D =
"http://pimlico-project.org/sources/dates/dates-${PV}.tar.gz"
> diff --git a/meta/recipes-sato/pimlico/dates_git.bb =
b/meta/recipes-sato/pimlico/dates_git.bb
> index d09f4e6..bceeec6 100644
> --- a/meta/recipes-sato/pimlico/dates_git.bb
> +++ b/meta/recipes-sato/pimlico/dates_git.bb
> @@ -6,7 +6,7 @@ LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D751419260aa954499f7abaabaa882bbe \
>                     =
file://src/gconf-bridge.c;endline=3D22;md5=3Dad7626c6daf4aec590474a243f491=
2fa"
>=20
> PV =3D "0.4.11+git${SRCPV}"
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> S =3D "${WORKDIR}/git"
>=20
> diff --git a/meta/recipes-support/enchant/enchant_1.6.0.bb =
b/meta/recipes-support/enchant/enchant_1.6.0.bb
> index 7df4f97..a3ef379 100644
> --- a/meta/recipes-support/enchant/enchant_1.6.0.bb
> +++ b/meta/recipes-support/enchant/enchant_1.6.0.bb
> @@ -6,11 +6,11 @@ LICENSE     =3D "LGPLv2.1+"
> LIC_FILES_CHKSUM =3D =
"file://COPYING.LIB;md5=3Ddfcbabf9131dc9a95febef6753a2958b \
>                     =
file://src/enchant.h;beginline=3D1;endline=3D29;md5=3D8d881caa1d37523567e1=
d8f726675a18"
> DEPENDS     =3D "aspell glib-2.0"
> -RDEPENDS    =3D "aspell"
> +RDEPENDS_${PN}    =3D "aspell"
>=20
> inherit autotools pkgconfig
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI =3D =
"http://www.abisource.com/downloads/enchant/${PV}/enchant-${PV}.tar.gz"
>=20
> diff --git a/meta/recipes-support/hal/hal.inc =
b/meta/recipes-support/hal/hal.inc
> index 839dfd0..ee6c7ba 100644
> --- a/meta/recipes-support/hal/hal.inc
> +++ b/meta/recipes-support/hal/hal.inc
> @@ -7,7 +7,7 @@ LICENSE =3D "GPLv2+ | AFL"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D5b5ffd59fbb7c2fff6de76c94177af31"
>=20
> DEPENDS =3D "virtual/kernel dbus-glib udev util-linux intltool =
intltool-native expat libusb gperf-native"
> -RDEPENDS +=3D "udev hal-info"
> +RDEPENDS_${PN} +=3D "udev hal-info"
>=20
> SRC_URI =3D "http://hal.freedesktop.org/releases/hal-${PV}.tar.gz \
>            file://20hal"
> diff --git a/meta/recipes-support/hal/hal_0.5.14.bb =
b/meta/recipes-support/hal/hal_0.5.14.bb
> index f9437f8..8b82ca8 100644
> --- a/meta/recipes-support/hal/hal_0.5.14.bb
> +++ b/meta/recipes-support/hal/hal_0.5.14.bb
> @@ -1,6 +1,6 @@
> require hal.inc
>=20
> -PR =3D "r2"
> +PR =3D "r3"
>=20
> EXTRA_OECONF +=3D =
"--with-linux-input-header=3D${STAGING_INCDIR}/linux/input.h"
> EXTRA_OEMAKE +=3D "-e 'udevrulesdir=3D$(sysconfdir)/udev/rules.d'"
> diff --git a/meta/recipes-support/hal/hal_git.bb =
b/meta/recipes-support/hal/hal_git.bb
> index baed472..483867f 100644
> --- a/meta/recipes-support/hal/hal_git.bb
> +++ b/meta/recipes-support/hal/hal_git.bb
> @@ -1,7 +1,7 @@
> require hal.inc
>=20
> PV =3D "0.5.9.1+git${SRCDATE}"
> -PR =3D "r7"
> +PR =3D "r8"
>=20
> SRC_URI =3D "git://anongit.freedesktop.org/hal/;protocol=3Dgit \
>         file://20hal \
> --=20
> 1.6.6.1
>=20


