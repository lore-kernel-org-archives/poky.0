Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 541374C811E1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:35:17 -0600 (CST)
Received: by wye20 with SMTP id 20so6494276wye.35
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 06:35:17 -0800 (PST)
Received: by 10.227.128.208 with SMTP id l16mr5202183wbs.63.1293114916792;
	Thu, 23 Dec 2010 06:35:16 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id q18sm5353792wbe.17.2010.12.23.06.35.15
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 23 Dec 2010 06:35:16 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Thu, 23 Dec 2010 15:35:13 +0100
Message-Id: <1293114913-5280-1-git-send-email-koen@openembedded.org>
X-Mailer: git-send-email 1.7.0
In-Reply-To: <1293113340.1588.860.camel@rex>
References: <1293113340.1588.860.camel@rex>
Subject: [RFC][PATCHv2] RDEPENDS, RRECOMMENDS -> RDPEPENDS_${PN}, RRECOMMENDS_${PN}
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
X-List-Received-Date: Thu, 23 Dec 2010 14:35:19 -0000

From: Koen Kooi <koen@dominion.thruhere.net>

For these recipes the depencies listed in RDEPENDS and RRECOMMENDS only apply to ${PN}

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---

Changes since v1: Addressed Richards comments

 .../openswan/openswan_2.4.7.bb                     |    6 +++---
 .../recipes-connectivity/opensync/libsync_svn.bb   |    3 ++-
 .../telepathy/empathy_2.26.1.bb                    |    6 +++---
 .../recipes-gnome/abiword/abiword-2.5.inc          |    2 +-
 .../abiword/abiword-embedded_2.5.2.bb              |    2 ++
 meta-demoapps/recipes-gnome/abiword/abiword.inc    |    2 +-
 .../recipes-gnome/abiword/abiword_2.5.2.bb         |    4 ++--
 meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb |    2 +-
 .../recipes-gnome/libgsf/libgsf_1.14.5.bb          |    4 ++--
 .../matchbox-themes-gtk/matchbox-themes-gtk.bb     |    4 ++--
 .../eee-acpi-scripts/eee-acpi-scripts_git.bb       |    4 ++--
 meta/recipes-bsp/grub/grub_0.97.bb                 |    4 ++--
 meta/recipes-bsp/hostap/hostap-conf_1.0.bb         |    4 ++--
 meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb       |    4 ++--
 meta/recipes-bsp/qemu-config/qemu-config.bb        |    4 ++--
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    3 ++-
 meta/recipes-connectivity/avahi/avahi.inc          |    2 +-
 meta/recipes-connectivity/avahi/avahi_0.6.28.bb    |    2 +-
 meta/recipes-connectivity/gsm/gsmd.inc             |    4 ++--
 .../libnss-mdns/libnss-mdns_0.10.bb                |    4 ++--
 .../nfs-utils/nfs-utils_1.2.3.bb                   |    6 +++---
 .../ppp-dialin/ppp-dialin_0.1.bb                   |    4 ++--
 .../resolvconf/resolvconf_1.43.bb                  |    4 ++--
 meta/recipes-core/glibc/glibc.inc                  |    2 +-
 meta/recipes-core/initscripts/initscripts_1.0.bb   |    4 ++--
 meta/recipes-devtools/apt/apt_0.7.14.bb            |    4 ++--
 meta/recipes-devtools/distcc/distcc_2.18.3.bb      |    4 ++--
 .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
 meta/recipes-devtools/intltool/intltool.inc        |    4 ++--
 meta/recipes-devtools/intltool/intltool_0.40.6.bb  |    2 +-
 meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb |    6 +++---
 meta/recipes-devtools/python/python-dbus_0.83.1.bb |    4 ++--
 meta/recipes-devtools/python/python-gst_0.10.19.bb |    4 ++--
 .../python/python-imaging_1.1.7.bb                 |    4 ++--
 .../python/python-pycurl_7.19.0.bb                 |    4 ++--
 .../recipes-devtools/python/python-pygtk_2.17.0.bb |    4 ++--
 .../python/python-pyrex-native_0.9.9.bb            |    4 ++--
 .../python/python-scons-native_2.0.1.bb            |    4 ++--
 .../qemu/qemu-helper-native_1.0.bb                 |    4 ++--
 .../qemu/qemu-helper-nativesdk_1.0.bb              |    4 ++--
 .../subversion/subversion_1.6.13.bb                |    4 ++--
 meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    4 ++--
 .../unfs-server/unfs-server_2.2beta47.bb           |    8 ++++----
 meta/recipes-extended/libzypp/libzypp_git.bb       |    4 ++--
 meta/recipes-extended/man-pages/man-pages_3.25.bb  |    4 ++--
 meta/recipes-extended/mc/mc_4.7.3.bb               |    4 +++-
 meta/recipes-extended/polkit/polkit_0.99.bb        |    4 ++--
 meta/recipes-extended/shadow/shadow.inc            |    2 +-
 meta/recipes-extended/shadow/shadow_4.1.4.2.bb     |    2 +-
 meta/recipes-extended/zypper/zypper_git.bb         |    4 ++--
 .../recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb |    6 +++---
 meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb   |    4 ++--
 meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb |    4 ++--
 .../gtk+/gdk-pixbuf-csource-native_2.12.7.bb       |    4 ++--
 meta/recipes-gnome/gtk+/gtk+.inc                   |    8 ++++----
 meta/recipes-gnome/gtk+/gtk+_2.12.7.bb             |    2 +-
 meta/recipes-gnome/gtk+/gtk+_2.16.6.bb             |    2 +-
 meta/recipes-gnome/gtk+/gtk+_2.20.1.bb             |    2 +-
 meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb     |    4 ++--
 .../tasks/task-poky-standalone-gmae-sdk-target.bb  |    4 ++--
 meta/recipes-graphics/cairo/cairo_1.10.0.bb        |    4 ++--
 .../libsdl/libsdl-nativesdk_1.2.11.bb              |    4 ++--
 meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb  |    3 ++-
 .../recipes-graphics/xorg-font/font-alias_1.0.3.bb |    6 +++---
 meta/recipes-graphics/xorg-font/font-util_1.2.0.bb |    6 +++---
 .../xorg-font/xorg-font-common.inc                 |    4 ++--
 .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    4 ++--
 meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |    4 ++--
 meta/recipes-kernel/oprofile/oprofile_0.9.6.bb     |    6 +++---
 meta/recipes-kernel/oprofile/oprofile_cvs.bb       |    6 +++---
 .../update-modules/update-modules_1.0.bb           |    6 +++---
 .../gstreamer/gst-openmax_0.10.1.bb                |    4 ++--
 .../gstreamer/gst-plugins-base_0.10.30.bb          |    4 ++--
 meta/recipes-qt/qt-apps/fotowall_0.9.bb            |    4 +++-
 meta/recipes-qt/qt-apps/qmmp_0.4.1.bb              |    4 ++--
 meta/recipes-qt/qt-apps/quicky_0.4.bb              |    4 +++-
 meta/recipes-sato/eds/eds-tools_bzr.bb             |    4 ++--
 meta/recipes-sato/gaku/gaku_svn.bb                 |    6 +++---
 .../matchbox-config-gtk/matchbox-config-gtk_svn.bb |    3 ++-
 .../matchbox-keyboard/matchbox-keyboard_svn.bb     |    4 ++--
 .../matchbox-sato/matchbox-session-sato_0.1.bb     |    4 ++--
 .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    6 +++---
 meta/recipes-sato/pimlico/contacts.inc             |    2 +-
 meta/recipes-sato/pimlico/contacts_0.9.bb          |    2 +-
 meta/recipes-sato/pimlico/contacts_git.bb          |    2 +-
 meta/recipes-sato/pimlico/dates.inc                |    2 +-
 meta/recipes-sato/pimlico/dates_0.4.8.bb           |    2 +-
 meta/recipes-sato/pimlico/dates_git.bb             |    2 +-
 meta/recipes-support/enchant/enchant_1.6.0.bb      |    4 ++--
 meta/recipes-support/hal/hal.inc                   |    2 +-
 meta/recipes-support/hal/hal_0.5.14.bb             |    2 +-
 meta/recipes-support/hal/hal_git.bb                |    2 +-
 92 files changed, 181 insertions(+), 169 deletions(-)

diff --git a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
index 022f709..d647f68 100644
--- a/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
+++ b/meta-demoapps/recipes-connectivity/openswan/openswan_2.4.7.bb
@@ -5,9 +5,9 @@ Linux operating system."
 HOMEPAGE = "http://www.openswan.org"
 LICENSE = "GPLv2"
 DEPENDS = "gmp flex-native"
-RRECOMMENDS = "kernel-module-ipsec"
-RDEPENDS_nylon = "perl"
-PR = "r0"
+RRECOMMENDS_${PN} = "kernel-module-ipsec"
+RDEPENDS_${PN}_nylon = "perl"
+PR = "r1"
 
 SRC_URI = "http://www.openswan.org/download/old/openswan-${PV}.tar.gz \
 	   file://openswan-2.4.7-gentoo.patch;patch=1 \
diff --git a/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb b/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
index 74ca752..06e44fd 100644
--- a/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
+++ b/meta-demoapps/recipes-connectivity/opensync/libsync_svn.bb
@@ -4,10 +4,11 @@ OpenSync in GLib applications."
 LICENSE = "LGPL"
 SECTION = "x11"
 DEPENDS = "glib-2.0 gtk+ libglade libopensync avahi"
-RRECOMMENDS = "\
+RRECOMMENDS_${PN} = "\
 	libopensync-plugin-file \
 	"
 PV = "0.0+svnr${SRCREV}"
+PR = "r1"
 
 SRC_URI = "svn://svn.o-hand.com/repos/sync/trunk;module=sync;proto=http"
 
diff --git a/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb b/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
index 2e07b19..2c973ac 100644
--- a/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
+++ b/meta-demoapps/recipes-connectivity/telepathy/empathy_2.26.1.bb
@@ -6,9 +6,9 @@ Gadu-Gadu, Groupwise, ICQ and QQ."
 HOMEPAGE = "http://blogs.gnome.org/view/xclaesse/2007/04/26/0"
 LICENSE = "GPL"
 DEPENDS = "libcanberra telepathy-farsight gnome-doc-utils python-native telepathy-python telepathy-mission-control libtelepathy telepathy-glib gtk+ gconf libglade eds-dbus"
-RDEPENDS = "telepathy-mission-control"
-RRECOMMENDS = "telepathy-gabble"
-PR = "r2"
+RDEPENDS_${PN} = "telepathy-mission-control"
+RRECOMMENDS_${PN} = "telepathy-gabble"
+PR = "r3"
 
 inherit gnome
 
diff --git a/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc b/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
index dcd3b85..e3f6a9d 100644
--- a/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
+++ b/meta-demoapps/recipes-gnome/abiword/abiword-2.5.inc
@@ -3,7 +3,7 @@ HOMEPAGE = "http://www.abiword.org"
 SECTION = "x11/office"
 LICENSE = "GPLv2"
 DEPENDS     = "perl-native wv libgsf libglade libfribidi jpeg libpng libxml2"
-RDEPENDS    = "glibc-gconv-ibm850 glibc-gconv-cp1252 \
+RDEPENDS_${PN}    = "glibc-gconv-ibm850 glibc-gconv-cp1252 \
                glibc-gconv-iso8859-15 glibc-gconv-iso8859-1"
 
 SRC_URI = "http://www.abiword.org/downloads/abiword/${PV}/source/abiword-${PV}.tar.gz"
diff --git a/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb b/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
index 47cf9e0..7ee0f86 100644
--- a/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
+++ b/meta-demoapps/recipes-gnome/abiword/abiword-embedded_2.5.2.bb
@@ -1,5 +1,7 @@
 require abiword-2.5.inc
 
+PR = "r1"
+
 EXTRA_OECONF += "--enable-embedded"
 
 S = "${WORKDIR}/abiword-${PV}"
diff --git a/meta-demoapps/recipes-gnome/abiword/abiword.inc b/meta-demoapps/recipes-gnome/abiword/abiword.inc
index d2fabf9..5d7e3ce 100644
--- a/meta-demoapps/recipes-gnome/abiword/abiword.inc
+++ b/meta-demoapps/recipes-gnome/abiword/abiword.inc
@@ -4,7 +4,7 @@ HOMEPAGE = "http://www.abiword.org""
 LICENSE = "GPLv2"
 
 DEPENDS     = "libgsf libglade libfribidi libxml2 wv"
-RRECOMMENDS    = "glibc-gconv-ibm850 glibc-gconv-cp1252 \
+RRECOMMENDS_${PN}    = "glibc-gconv-ibm850 glibc-gconv-cp1252 \
                glibc-gconv-iso8859-15 glibc-gconv-iso8859-1"
 
 # Share this file between recipes that use cvs and that pull tarballs
diff --git a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
index 566d0fa..c10d761 100644
--- a/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
+++ b/meta-demoapps/recipes-gnome/abiword/abiword_2.5.2.bb
@@ -1,5 +1,5 @@
 require abiword-2.5.inc
 
-PR = "r1"
+PR = "r2"
 
-RCONFLICTS = "abiword-embedded"
+RCONFLICTS_${PN} = "abiword-embedded"
diff --git a/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb b/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
index e0e3bd7..4dffbd0 100644
--- a/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
+++ b/meta-demoapps/recipes-gnome/abiword/abiword_cvs.bb
@@ -1,7 +1,7 @@
 require abiword.inc
 
 PV="2.5.0+cvs${SRCDATE}"
-PR = "r3"
+PR = "r4"
 
 SRC_URI = "${CVSURI}"
 
diff --git a/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb b/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
index 760c5c1..3ac7d6e 100644
--- a/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
+++ b/meta-demoapps/recipes-gnome/libgsf/libgsf_1.14.5.bb
@@ -1,10 +1,10 @@
 DESCRIPTION = "GNOME Structured File Library"
 LICENSE = "GPL"
 SECTION = "libs"
-PR = "r0"
+PR = "r1"
 
 DEPENDS= "libxml2 bzip2 glib-2.0 zlib"
-RDEPENDS = "gconf gnome-vfs"
+RDEPENDS_${PN} = "gconf gnome-vfs"
 
 
 PACKAGES =+ "${PN}-gnome ${PN}-gnome-dev "
diff --git a/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb b/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
index 60be56d..21716cf 100644
--- a/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
+++ b/meta-demoapps/recipes-sato/matchbox-themes-gtk/matchbox-themes-gtk.bb
@@ -1,9 +1,9 @@
 DESCRIPTION = "Gtk2 theme files to accompany default Matchbox themes"
 LICENSE = "GPL"
 DEPENDS = "gtk-engines"
-RDEPENDS = "matchbox-wm gtk-engine-clearlooks"
+RDEPENDS_${PN} = "matchbox-wm gtk-engine-clearlooks"
 SECTION = "x11/base"
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "file://gtkrc"
 
diff --git a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
index d186727..05bedb9 100644
--- a/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
+++ b/meta/recipes-bsp/eee-acpi-scripts/eee-acpi-scripts_git.bb
@@ -6,9 +6,9 @@ LICENSE="GPL"
 LIC_FILES_CHKSUM = "file://debian/copyright;md5=77ef83ab5f4af938a93edb61f7b74f2c"
 
 PV = "1.1.11+git${SRCREV}"
-PR = "r3"
+PR = "r4"
 
-RDEPENDS = "pm-utils"
+RDEPENDS_${PN} = "pm-utils"
 
 SRC_URI = "git://git.debian.org/git/debian-eeepc/eeepc-acpi-scripts.git;protocol=git \
 	   file://remove-doc-check.patch;patch=1 \
diff --git a/meta/recipes-bsp/grub/grub_0.97.bb b/meta/recipes-bsp/grub/grub_0.97.bb
index 503dac0..131d942 100644
--- a/meta/recipes-bsp/grub/grub_0.97.bb
+++ b/meta/recipes-bsp/grub/grub_0.97.bb
@@ -10,8 +10,8 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
                     file://grub/main.c;beginline=3;endline=9;md5=22a5f28d2130fff9f2a17ed54be90ed6"
 
-RDEPENDS = "diffutils"
-PR = "r2"
+RDEPENDS_${PN} = "diffutils"
+PR = "r3"
 
 SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz; \
 	   file://autohell.patch;apply=yes "
diff --git a/meta/recipes-bsp/hostap/hostap-conf_1.0.bb b/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
index ef004e6..fa29470 100644
--- a/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
+++ b/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
@@ -3,9 +3,9 @@ SECTION = "kernel/modules"
 PRIORITY = "optional"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-RDEPENDS = "update-modules"
+RDEPENDS_${PN} = "update-modules"
 PACKAGE_ARCH = "all"
-PR = "r11"
+PR = "r12"
 
 SRC_URI = "file://hostap_cs.modalias \
            file://COPYING.patch"
diff --git a/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb b/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
index bc22f6f..a24d004 100644
--- a/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
+++ b/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
@@ -3,9 +3,9 @@ SECTION = "kernel/modules"
 PRIORITY = "optional"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-RDEPENDS = "update-modules"
+RDEPENDS_${PN} = "update-modules"
 PACKAGE_ARCH = "all"
-PR = "r5"
+PR = "r6"
 
 SRC_URI = "file://orinoco_cs.conf \
            file://COPYING.patch"
diff --git a/meta/recipes-bsp/qemu-config/qemu-config.bb b/meta/recipes-bsp/qemu-config/qemu-config.bb
index dbe5d83..0792670 100644
--- a/meta/recipes-bsp/qemu-config/qemu-config.bb
+++ b/meta/recipes-bsp/qemu-config/qemu-config.bb
@@ -3,8 +3,8 @@ DESCRIPTION = "Adds scripts to use distcc on the host system under qemu"
 LICENSE = "GPL"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe"
 
-RDEPENDS = "distcc task-poky-nfs-server oprofileui-server rsync bash"
-PR = "r18"
+RDEPENDS_${PN} = "distcc task-poky-nfs-server oprofileui-server rsync bash"
+PR = "r19"
 
 SRC_URI = "file://distcc.sh \
            file://anjuta-remote-run \
diff --git a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
index 523f72d..64145a3 100644
--- a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
+++ b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
@@ -3,8 +3,9 @@ SECTION = "base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "tslib"
-RDEPENDS = "xrandr"
+RDEPENDS_${PN} = "xrandr"
 PV = "0.0+svnr${SRCREV}"
+PR = "r1"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=zaurusd;proto=http"
 
diff --git a/meta/recipes-connectivity/avahi/avahi.inc b/meta/recipes-connectivity/avahi/avahi.inc
index b266ea4..5c3b4dd 100644
--- a/meta/recipes-connectivity/avahi/avahi.inc
+++ b/meta/recipes-connectivity/avahi/avahi.inc
@@ -16,7 +16,7 @@ PRIORITY = "optional"
 LICENSE = "GPLv2+ & LGPLv2.1+"
 
 DEPENDS = "expat libcap libdaemon dbus glib-2.0 gtk+ libglade"
-RRECOMMENDS = "libnss-mdns"
+RRECOMMENDS_${PN} = "libnss-mdns"
 RRECOMMENDS_avahi-daemon = "libnss-mdns"
 
 SRC_URI = "http://avahi.org/download/avahi-${PV}.tar.gz \
diff --git a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
index b2e9efb..fb339e7 100644
--- a/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
+++ b/meta/recipes-connectivity/avahi/avahi_0.6.28.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://avahi-client/client.h;endline=23;md5=f4ac741a25c4f434039ba3e18c8674cf"
 
 RDEPENDS_avahi-daemon = "sysvinit-pidof"
-PR = "r0"
+PR = "r1"
 
 EXTRA_OECONF += "--disable-gtk3"
 
diff --git a/meta/recipes-connectivity/gsm/gsmd.inc b/meta/recipes-connectivity/gsm/gsmd.inc
index 9818188..385c40e 100644
--- a/meta/recipes-connectivity/gsm/gsmd.inc
+++ b/meta/recipes-connectivity/gsm/gsmd.inc
@@ -10,7 +10,7 @@ SECTION = "libs/gsm"
 PROVIDES += "gsmd"
 RPROVIDES_${PN} = "libgsmd0 libgsmd gsmd gsmd-devel"
 PV = "0.1+svnr${SRCREV}"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "svn://svn.openmoko.org/trunk/src/target;module=gsm;proto=http \
            file://fix_machine_init.patch;patch=1 \
@@ -19,7 +19,7 @@ SRC_URI = "svn://svn.openmoko.org/trunk/src/target;module=gsm;proto=http \
 S = "${WORKDIR}/gsm"
 
 inherit autotools pkgconfig update-rc.d
-# handle update-rc.d RDEPENDS manually, we don't need it on
+# handle update-rc.d RDEPENDS_${PN} manually, we don't need it on
 # anything but gsmd
 RDEPENDS_append = ""
 
diff --git a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
index 0cdb057..4c94d2a 100644
--- a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
+++ b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
@@ -7,8 +7,8 @@ LICENSE = "LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"
 
 DEPENDS = "avahi"
-RDEPENDS = "avahi-daemon"
-PR = "r1"
+RDEPENDS_${PN} = "avahi-daemon"
+PR = "r2"
 
 SRC_URI = "http://0pointer.de/lennart/projects/nss-mdns/nss-mdns-${PV}.tar.gz"
 
diff --git a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
index d86bd0f..a2bac61 100644
--- a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
+++ b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
@@ -10,10 +10,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 
 # util-linux for libblkid
 DEPENDS = "libcap libnfsidmap libevent util-linux tcp-wrappers"
-RDEPENDS = "portmap"
-RRECOMMENDS = "kernel-module-nfsd"
+RDEPENDS_${PN} = "portmap"
+RRECOMMENDS_${PN} = "kernel-module-nfsd"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/nfs/nfs-utils-${PV}.tar.bz2 \
            file://nfs-utils-1.0.6-uclibc.patch \
diff --git a/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb b/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
index 7980561..aa3684a 100644
--- a/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
+++ b/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
@@ -1,8 +1,8 @@
 SECTION = "console/network"
 DESCRIPTION = "Enables PPP dial-in through a serial connection"
 DEPENDS = "ppp"
-RDEPENDS = "ppp"
-PR = "r5"
+RDEPENDS_${PN} = "ppp"
+PR = "r6"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
diff --git a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
index 16d88dc..02aed1d 100644
--- a/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
+++ b/meta/recipes-connectivity/resolvconf/resolvconf_1.43.bb
@@ -10,8 +10,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 AUTHOR = "Thomas Hood"
 HOMEPAGE = "http://packages.debian.org/resolvconf"
 DEPENDS = "bash"
-RDEPENDS = "bash"
-PR = "r1"
+RDEPENDS_${PN} = "bash"
+PR = "r2"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/r/resolvconf/resolvconf_${PV}.tar.gz"
 
diff --git a/meta/recipes-core/glibc/glibc.inc b/meta/recipes-core/glibc/glibc.inc
index ecaf593..e2b681f 100644
--- a/meta/recipes-core/glibc/glibc.inc
+++ b/meta/recipes-core/glibc/glibc.inc
@@ -13,7 +13,7 @@ DEPENDS = "virtual/${TARGET_PREFIX}gcc-intermediate linux-libc-headers"
 RDEPENDS_${PN}-dev = "linux-libc-headers-dev"
 #this leads to circular deps, so lets not add it yet
 #RDEPENDS_ldd += " bash"
-#RDEPENDS += "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
+#RDEPENDS_${PN} += "${@['','libgcc']['nptl' in '${GLIBC_ADDONS}']}"
 PROVIDES = "virtual/libc virtual/${TARGET_PREFIX}libc-for-gcc"
 PROVIDES += "virtual/libintl virtual/libiconv"
 
diff --git a/meta/recipes-core/initscripts/initscripts_1.0.bb b/meta/recipes-core/initscripts/initscripts_1.0.bb
index 758c607..1d2509e 100644
--- a/meta/recipes-core/initscripts/initscripts_1.0.bb
+++ b/meta/recipes-core/initscripts/initscripts_1.0.bb
@@ -3,10 +3,10 @@ DESCRIPTION = "Initscripts provide the basic system startup initialization scrip
 SECTION = "base"
 PRIORITY = "required"
 DEPENDS = "makedevs"
-RDEPENDS = "makedevs"
+RDEPENDS_${PN} = "makedevs"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
-PR = "r122"
+PR = "r123"
 
 SRC_URI = "file://functions \
            file://halt \
diff --git a/meta/recipes-devtools/apt/apt_0.7.14.bb b/meta/recipes-devtools/apt/apt_0.7.14.bb
index 54096ef..d2bcde5 100644
--- a/meta/recipes-devtools/apt/apt_0.7.14.bb
+++ b/meta/recipes-devtools/apt/apt_0.7.14.bb
@@ -1,9 +1,9 @@
 DEPENDS = "curl db"
-RDEPENDS = "dpkg"
+RDEPENDS_${PN} = "dpkg"
 LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=0636e73ff0215e8d672dc4c32c317bb3"
 require apt.inc
 
-PR = "r3"
+PR = "r4"
 
 SRC_URI += "file://nodoc.patch \
 	    file://includes-fix.patch"
diff --git a/meta/recipes-devtools/distcc/distcc_2.18.3.bb b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
index 1b14a6b..b6b7b78 100644
--- a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
+++ b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
@@ -4,10 +4,10 @@ compilation of C/C++/ObjC code across machines on a network."
 SECTION = "devel"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
-PR = "r5"
+PR = "r6"
 
 DEPENDS = "avahi gtk+"
-RRECOMMENDS = "avahi-daemon"
+RRECOMMENDS_${PN} = "avahi-daemon"
 
 # Upstream change this patch periodically so store locally
 # http://0pointer.de/public/distcc-avahi.patch
diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
index 3f9195a..3681ab3 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
@@ -34,7 +34,7 @@ do_install () {
 }
 
 # blkid used to be part of e2fsprogs but is useful outside, add it
-# as an RDEPENDS so that anything relying on it being in e2fsprogs
+# as an RDEPENDS_${PN} so that anything relying on it being in e2fsprogs
 # still works
 RDEPENDS_e2fsprogs = "e2fsprogs-blkid e2fsprogs-badblocks"
 
diff --git a/meta/recipes-devtools/intltool/intltool.inc b/meta/recipes-devtools/intltool/intltool.inc
index f9bdf93..9df79f5 100644
--- a/meta/recipes-devtools/intltool/intltool.inc
+++ b/meta/recipes-devtools/intltool/intltool.inc
@@ -8,8 +8,8 @@ SRC_URI = "${GNOME_MIRROR}/intltool/${URLV}/intltool-${PV}.tar.bz2"
 S = "${WORKDIR}/intltool-${PV}"
 
 DEPENDS = "libxml-parser-perl-native"
-#RDEPENDS = "libxml-parser-perl"
-RRECOMMENDS = "perl-modules"
+#RDEPENDS_${PN} = "libxml-parser-perl"
+RRECOMMENDS_${PN} = "perl-modules"
 
 inherit autotools pkgconfig
 
diff --git a/meta/recipes-devtools/intltool/intltool_0.40.6.bb b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
index 4b5fe82..88d441c 100644
--- a/meta/recipes-devtools/intltool/intltool_0.40.6.bb
+++ b/meta/recipes-devtools/intltool/intltool_0.40.6.bb
@@ -1,7 +1,7 @@
 require intltool.inc
 LICENSE="GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
-PR = "r0"
+PR = "r1"
 
 SRC_URI_append = " file://intltool-nowarn-0.40.0.patch"
 
diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
index 087d254..ce039e5 100644
--- a/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
+++ b/meta/recipes-devtools/opkg-utils/opkg-utils_svn.bb
@@ -5,10 +5,10 @@ PRIORITY = "optional"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://opkg.py;beginline=1;endline=18;md5=15917491ad6bf7acc666ca5f7cc1e083"
-RDEPENDS = "python"
-RDEPENDS_virtclass-native = ""
+RDEPENDS_${PN} = "python"
+RDEPENDS_${PN}_virtclass-native = ""
 PV = "0.1.8+svnr${SRCREV}"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "svn://svn.openmoko.org/trunk/src/host/;module=opkg-utils;proto=http \
            file://index-ignore-filenotfound.patch"
diff --git a/meta/recipes-devtools/python/python-dbus_0.83.1.bb b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
index d405ffa..fcf638d 100644
--- a/meta/recipes-devtools/python/python-dbus_0.83.1.bb
+++ b/meta/recipes-devtools/python/python-dbus_0.83.1.bb
@@ -4,7 +4,7 @@ HOMEPAGE = "http://www.freedesktop.org/Software/dbus"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f5612614133e9a2f2dad527d97554670"
 DEPENDS = "expat dbus dbus-glib virtual/libintl python-pyrex-native"
-PR = "ml0"
+PR = "ml1"
 
 SRC_URI = "http://dbus.freedesktop.org/releases/dbus-python/dbus-python-${PV}.tar.gz"
 
@@ -20,6 +20,6 @@ export HOST_SYS
 export STAGING_LIBDIR
 export STAGING_INCDIR
 
-RDEPENDS = "python-io python-logging python-stringold python-threading python-xml"
+RDEPENDS_${PN} = "python-io python-logging python-stringold python-threading python-xml"
 
 FILES_${PN}-dev += "${libdir}/pkgconfig 
diff --git a/meta/recipes-devtools/python/python-gst_0.10.19.bb b/meta/recipes-devtools/python/python-gst_0.10.19.bb
index 16852d1..22d6339 100644
--- a/meta/recipes-devtools/python/python-gst_0.10.19.bb
+++ b/meta/recipes-devtools/python/python-gst_0.10.19.bb
@@ -2,8 +2,8 @@ DESCRIPTION = "Python Gstreamer bindings"
 SECTION = "devel/python"
 LICENSE = "LGPLv2.1"
 DEPENDS = "gstreamer gst-plugins-base python-pygobject"
-RDEPENDS += "python-pygtk"
-PR = "r0"
+RDEPENDS_${PN} += "python-pygtk"
+PR = "r1"
 
 SRC_URI = "http://gstreamer.freedesktop.org/src/gst-python/gst-python-${PV}.tar.bz2 \
            file://python-path.patch"
diff --git a/meta/recipes-devtools/python/python-imaging_1.1.7.bb b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
index bd6fe1d..ce3b977 100644
--- a/meta/recipes-devtools/python/python-imaging_1.1.7.bb
+++ b/meta/recipes-devtools/python/python-imaging_1.1.7.bb
@@ -4,9 +4,9 @@ PRIORITY = "optional"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://README;beginline=92;endline=120;md5=c4371af4579f1e489cf881c1443dd4ec"
 DEPENDS = "freetype jpeg tiff"
-RDEPENDS = "python-lang python-stringold"
+RDEPENDS_${PN} = "python-lang python-stringold"
 SRCNAME = "Imaging"
-PR = "ml0"
+PR = "ml1"
 
 SRC_URI = "http://effbot.org/downloads/Imaging-${PV}.tar.gz \
            file://path.patch"
diff --git a/meta/recipes-devtools/python/python-pycurl_7.19.0.bb b/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
index c8841f4..b868ad8 100644
--- a/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
+++ b/meta/recipes-devtools/python/python-pycurl_7.19.0.bb
@@ -8,9 +8,9 @@ LIC_FILES_CHKSUM = "file://README;endline=13;md5=fbfe545b1869617123a08c0983ef17b
                     file://COPYING2;md5=ffaa1e283b7f9bf5aafd8d45db6f7518"
 
 DEPENDS = "curl python"
-RDEPENDS = "python-core curl"
+RDEPENDS_${PN} = "python-core curl"
 SRCNAME = "pycurl"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "\
   http://${SRCNAME}.sourceforge.net/download/${SRCNAME}-${PV}.tar.gz;name=archive \
diff --git a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
index c32d998..f56e1fe 100644
--- a/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
+++ b/meta/recipes-devtools/python/python-pygtk_2.17.0.bb
@@ -2,12 +2,12 @@ DESCRIPTION = "Python GTK+ 2.17.x Bindings"
 SECTION = "devel/python"
 # needs gtk+ 2.17.x
 DEPENDS = "gtk+ libglade python-pycairo python-pygobject"
-RDEPENDS = "python-shell python-pycairo python-pygobject"
+RDEPENDS_${PN} = "python-shell python-pycairo python-pygobject"
 PROVIDES = "python-pygtk2"
 SRCNAME = "pygtk"
 LICENSE = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=a916467b91076e631dd8edb7424769c7"
-PR = "ml8.3"
+PR = "ml9"
 
 SRC_URI = "ftp://ftp.gnome.org/pub/gnome/sources/pygtk/2.17/${SRCNAME}-${PV}.tar.bz2 \
            file://fix-gtkunixprint.patch \
diff --git a/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb b/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb
index 90b6b16..8276354 100644
--- a/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb
+++ b/meta/recipes-devtools/python/python-pyrex-native_0.9.9.bb
@@ -1,5 +1,5 @@
 require python-pyrex_${PV}.bb
 inherit native
 DEPENDS = "python-native"
-RDEPENDS = ""
-PR = "r0"
+RDEPENDS_${PN} = ""
+PR = "r1"
diff --git a/meta/recipes-devtools/python/python-scons-native_2.0.1.bb b/meta/recipes-devtools/python/python-scons-native_2.0.1.bb
index a4bcd42..f7646a2 100644
--- a/meta/recipes-devtools/python/python-scons-native_2.0.1.bb
+++ b/meta/recipes-devtools/python/python-scons-native_2.0.1.bb
@@ -1,6 +1,6 @@
 require python-scons_${PV}.bb
 inherit native
 DEPENDS = "python-native"
-RDEPENDS = ""
-PR = "r0"
+RDEPENDS_${PN} = ""
+PR = "r1"
 
diff --git a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
index 19fb6f4..aae96ab 100644
--- a/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
+++ b/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Qemu helper utilities from Poky"
 LICENSE = "GPLv2"
-RDEPENDS = "qemu-native"
-PR = "r0"
+RDEPENDS_${PN} = "qemu-native"
+PR = "r1"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-helper"
 
diff --git a/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb b/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb
index 7914656..16c3fb4 100644
--- a/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb
+++ b/meta/recipes-devtools/qemu/qemu-helper-nativesdk_1.0.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Qemu helper scripts from Poky"
 LICENSE = "GPL"
-RDEPENDS = "qemu-nativesdk"
-PR = "r8"
+RDEPENDS_${PN} = "qemu-nativesdk"
+PR = "r9"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-helper"
 
diff --git a/meta/recipes-devtools/subversion/subversion_1.6.13.bb b/meta/recipes-devtools/subversion/subversion_1.6.13.bb
index bcdb6c2..b535f06 100644
--- a/meta/recipes-devtools/subversion/subversion_1.6.13.bb
+++ b/meta/recipes-devtools/subversion/subversion_1.6.13.bb
@@ -1,11 +1,11 @@
 DESCRIPTION = "The Subversion (svn) client"
 SECTION = "console/network"
 DEPENDS = "apr-util neon"
-RDEPENDS = "neon"
+RDEPENDS_${PN} = "neon"
 LICENSE = "Apache BSD"
 HOMEPAGE = "http://subversion.tigris.org"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://subversion.tigris.org/downloads/${P}.tar.bz2 \
            file://disable-revision-install.patch;patch=1 \
diff --git a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
index 6897f18..28a9e6f 100644
--- a/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
+++ b/meta/recipes-devtools/ubootchart/ubootchart_svn.bb
@@ -3,9 +3,9 @@ HOMEPAGE = "http://code.google.com/p/ubootchart/"
 LICENSE = "GPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8f0e2cd40e05189ec81232da84bd6e1a"
 PV = "0.0+r${SRCREV}"
-PR = "r4"
+PR = "r5"
 
-#RRECOMMENDS = "acct"
+#RRECOMMENDS_${PN} = "acct"
 
 SRC_URI = "svn://ubootchart.googlecode.com/svn/;proto=http;module=trunk \
         file://sysvinit.patch;patch=1;pnum=0 \
diff --git a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
index 89313d6..86ef300 100644
--- a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
+++ b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
@@ -3,10 +3,10 @@ SECTION = "console/network"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 
-RDEPENDS = "pseudo"
-RDEPENDS_virtclass-native = "pseudo-native"
-RDEPENDS_virtclass-nativesdk = "pseudo-nativesdk"
-PR = "r1"
+RDEPENDS_${PN} = "pseudo"
+RDEPENDS_${PN}_virtclass-native = "pseudo-native"
+RDEPENDS_${PN}_virtclass-nativesdk = "pseudo-nativesdk"
+PR = "r2"
 
 SRC_URI = "ftp://linux.mathematik.tu-darmstadt.de/pub/linux/oldstuff/people/okir/nfs-server-${PV}.tar.gz \
            file://001-2.2b47-2.2b51.patch \
diff --git a/meta/recipes-extended/libzypp/libzypp_git.bb b/meta/recipes-extended/libzypp/libzypp_git.bb
index e295569..6918263 100644
--- a/meta/recipes-extended/libzypp/libzypp_git.bb
+++ b/meta/recipes-extended/libzypp/libzypp_git.bb
@@ -9,11 +9,11 @@ inherit cmake
 DEPENDS  = "rpm boost gettext curl libxml2 zlib sat-solver expat openssl udev"
 
 # rpmdb2solv from sat-solver is run from libzypp
-RDEPENDS = "sat-solver"
+RDEPENDS_${PN} = "sat-solver"
 
 S = "${WORKDIR}/git"
 PV = "0.0-git${SRCPV}"
-PR = "r3"
+PR = "r4"
 
 SRC_URI = "git://gitorious.org/opensuse/libzypp.git;protocol=git \
            file://no-doc.patch \
diff --git a/meta/recipes-extended/man-pages/man-pages_3.25.bb b/meta/recipes-extended/man-pages/man-pages_3.25.bb
index b5b200c..358f78d 100644
--- a/meta/recipes-extended/man-pages/man-pages_3.25.bb
+++ b/meta/recipes-extended/man-pages/man-pages_3.25.bb
@@ -4,7 +4,7 @@ SECTION = "console/utils"
 PRIORITY = "required"
 HOMEPAGE = "http://www.kernel.org/pub/linux/docs/man-pages"
 LICENSE = "GPL"
-PR = "r0"
+PR = "r1"
 
 LIC_FILES_CHKSUM = "file://README;md5=9dab010c5baa416669e5d17381799dd5"
 SRC_URI = "http://www.kernel.org/pub/linux/docs/man-pages/Archive/${PN}-${PV}.tar.gz"
@@ -12,7 +12,7 @@ SRC_URI = "http://www.kernel.org/pub/linux/docs/man-pages/Archive/${PN}-${PV}.ta
 SRC_URI[md5sum] = "98ec2324abea77d7a992470dd44d140c"
 SRC_URI[sha256sum] = "474242842a78dc2121687b7db6c32b6c78af5458f2bd809e23563dd185e2b169"
 
-RDEPENDS = "man"
+RDEPENDS_${PN} = "man"
 
 do_configure_prepend() {
 	rm -rf not_installed
diff --git a/meta/recipes-extended/mc/mc_4.7.3.bb b/meta/recipes-extended/mc/mc_4.7.3.bb
index 22a1a93..537aa05 100644
--- a/meta/recipes-extended/mc/mc_4.7.3.bb
+++ b/meta/recipes-extended/mc/mc_4.7.3.bb
@@ -4,7 +4,9 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 SECTION = "console/utils"
 DEPENDS = "ncurses glib-2.0"
-RDEPENDS = "ncurses-terminfo"
+RDEPENDS_${PN} = "ncurses-terminfo"
+
+PR = "r1"
 
 SRC_URI = "http://www.midnight-commander.org/downloads/${PN}-${PV}.tar.bz2"
 
diff --git a/meta/recipes-extended/polkit/polkit_0.99.bb b/meta/recipes-extended/polkit/polkit_0.99.bb
index f578cca..7f96979 100644
--- a/meta/recipes-extended/polkit/polkit_0.99.bb
+++ b/meta/recipes-extended/polkit/polkit_0.99.bb
@@ -7,9 +7,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=155db86cdbafa7532b41f390409283eb \
                     file://docs/polkit/html/license.html;md5=54750ec6ece444c50b823234d445dd99"
 
 SRC_URI = "http://hal.freedesktop.org/releases/polkit-${PV}.tar.gz"
-PR = "r0"
+PR = "r1"
 DEPENDS = "libpam expat dbus-glib eggdbus intltool"
-RDEPENDS = "libpam"
+RDEPENDS_${PN} = "libpam"
 EXTRA_OECONF = "--with-authfw=pam --with-os-type=moblin --disable-man-pages --disable-gtk-doc --disable-introspection"
 
 inherit autotools pkgconfig
diff --git a/meta/recipes-extended/shadow/shadow.inc b/meta/recipes-extended/shadow/shadow.inc
index fcbcb3e..42f92a7 100644
--- a/meta/recipes-extended/shadow/shadow.inc
+++ b/meta/recipes-extended/shadow/shadow.inc
@@ -20,7 +20,7 @@ PAM_PLUGINS = "  libpam-runtime \
                  pam-plugin-rootok"
                  
 DEPENDS = "${@base_contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)}"
-RDEPENDS = "${@base_contains('DISTRO_FEATURES', 'pam', '${PAM_PLUGINS}', '', d)}"
+RDEPENDS_${PN} = "${@base_contains('DISTRO_FEATURES', 'pam', '${PAM_PLUGINS}', '', d)}"
 
 # since we deduce from ${SERIAL_CONSOLE}
 PACKAGE_ARCH = "${MACHINE_ARCH}"
diff --git a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb b/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
index ca5f533..224ae5e 100644
--- a/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
+++ b/meta/recipes-extended/shadow/shadow_4.1.4.2.bb
@@ -1,6 +1,6 @@
 require shadow.inc
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI += "file://shadow.automake-1.11.patch \
 	    file://shadow-4.1.3-dots-in-usernames.patch \
diff --git a/meta/recipes-extended/zypper/zypper_git.bb b/meta/recipes-extended/zypper/zypper_git.bb
index 8caf4db..c8895e5 100644
--- a/meta/recipes-extended/zypper/zypper_git.bb
+++ b/meta/recipes-extended/zypper/zypper_git.bb
@@ -5,8 +5,8 @@ LICENSE  = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3201406e350b39e05a82e28b5020f413"
 
 DEPENDS  = "libzypp augeas"
-RRECOMMENDS = "procps"
-PR = "r1"
+RRECOMMENDS_${PN} = "procps"
+PR = "r2"
 
 inherit cmake
 
diff --git a/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
index 9898428..17fff1c 100644
--- a/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-icon-theme_2.31.0.bb
@@ -7,9 +7,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=e7e289d90fc8bdceed5e3f142f98229e"
 
 SECTION = "x11/gnome"
 DEPENDS = "icon-naming-utils-native glib-2.0 intltool-native"
-RDEPENDS = "hicolor-icon-theme"
-RRECOMMENDS = "librsvg-gtk"
-PR = "r0"
+RDEPENDS_${PN} = "hicolor-icon-theme"
+RRECOMMENDS_${PN} = "librsvg-gtk"
+PR = "r1"
 
 FILES_${PN} += "${datadir}/*"
 
diff --git a/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb b/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
index 153979e..5932ddd 100644
--- a/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
+++ b/meta/recipes-gnome/gnome/gnome-keyring_2.32.1.bb
@@ -11,12 +11,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SECTION = "x11/gnome"
 
-PR = "r0"
+PR = "r1"
 
 inherit autotools gnome pkgconfig
 
 DEPENDS = "gtk+ libgcrypt libtasn1 libtasn1-native gconf"
-RDEPENDS = "libgnome-keyring"
+RDEPENDS_${PN} = "libgnome-keyring"
 
 EXTRA_OECONF = "--disable-gtk-doc"
 
diff --git a/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb b/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
index 3bb50d1..b730dae 100644
--- a/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
+++ b/meta/recipes-gnome/gnome/gnome-mime-data_2.18.0.bb
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
 
 inherit gnome
 inherit autotools
-PR = "r3"
+PR = "r4"
 
 SRC_URI += "file://pkgconfig.patch;patch=1"
 
@@ -16,4 +16,4 @@ SRC_URI[archive.md5sum] = "541858188f80090d12a33b5a7c34d42c"
 SRC_URI[archive.sha256sum] = "37196b5b37085bbcd45c338c36e26898fe35dd5975295f69f48028b1e8436fd7"
 
 DEPENDS += "shared-mime-info intltool-native"
-RDEPENDS = "shared-mime-info"
+RDEPENDS_${PN} = "shared-mime-info"
diff --git a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb b/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
index c88a795..0c8506a 100644
--- a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
+++ b/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
@@ -4,10 +4,10 @@ DEPENDS = "jpeg-native libpng-native gettext-native glib-2.0-native libx11-nativ
 S = "${WORKDIR}/gtk+-${PV}"
 FILESPATH = "${FILE_DIRNAME}/gdk-pixbuf-csource:${FILE_DIRNAME}/gtk+-${PV}:${FILE_DIRNAME}/files"
 SRC_URI += "file://reduce-dependencies.patch;patch=1"
-PR = "r11"
+PR = "r13"
 
 #clear recommends for uclibc builds
-RRECOMMENDS = " "
+RRECOMMENDS_${PN} = " "
 RRECOMMENDS_${PN}_linux = "  "
 RRECOMMENDS_${PN}_linux-gnueabi = " "
 
diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
index c34283e..b0222a3 100644
--- a/meta/recipes-gnome/gtk+/gtk+.inc
+++ b/meta/recipes-gnome/gtk+/gtk+.inc
@@ -35,10 +35,10 @@ FILES_${PN}-dbg += " \
 	${libdir}/gtk-2.0/${LIBV}/engines/.debug/* \
 	${libdir}/gtk-2.0/${LIBV}/printbackends/.debug/*"
 
-BASE_RRECOMMENDS = "ttf-dejavu-sans"
-BASE_RRECOMMENDS_angstrom = "ttf-dejavu-sans gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm"
-BASE_RRECOMMENDS_poky = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
-BASE_RRECOMMENDS_moblin = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
+BASE_RRECOMMENDS_${PN} = "ttf-dejavu-sans"
+BASE_RRECOMMENDS_${PN}_angstrom = "ttf-dejavu-sans gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm"
+BASE_RRECOMMENDS_${PN}_poky = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
+BASE_RRECOMMENDS_${PN}_moblin = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
 
 GLIBC_RRECOMMENDS= "${BASE_RRECOMMENDS} glibc-gconv-iso8859-1"
 
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb b/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
index d829308..12193f9 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
@@ -1,6 +1,6 @@
 require gtk+.inc
 
-PR = "r9"
+PR = "r10"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.12/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb b/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
index becd2bc..1864d1b 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
@@ -1,6 +1,6 @@
 require gtk+.inc
 
-PR = "r5"
+PR = "r6"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.16/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
index dec5187..80be21c 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gtk/gtk.h;endline=27;md5=c59e0b4490dd135a5726ebf851f9b17f \
                     file://gdk/gdk.h;endline=27;md5=07db285ec208fb3e0bf7d861b0614202 \
                     file://tests/testgtk.c;endline=27;md5=262db5db5f776f9863e56df31423e24c"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.20/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
diff --git a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
index b3b5ebb..d009e4e 100644
--- a/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
+++ b/meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb
@@ -6,7 +6,7 @@ DESCRIPTION = "Gnome Mobile And Embedded Software Development Kit for OpenedHand
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r9"
+PR = "r10"
 
 ALLOW_EMPTY = "1"
 
@@ -14,7 +14,7 @@ require task-sdk-gmae.inc
 
 PACKAGES = "${PN}"
 
-RDEPENDS = "\
+RDEPENDS_${PN} = "\
     task-poky-sdk \
     libglade-dev \
     ${SDK-GMAE} \
diff --git a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
index cf81bf3..7dcad61 100644
--- a/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
+++ b/meta/recipes-gnome/tasks/task-poky-standalone-gmae-sdk-target.bb
@@ -6,7 +6,7 @@ DESCRIPTION = "Gnome Mobile And Embedded Software Development Kit for OpenedHand
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r11"
+PR = "r12"
 
 ALLOW_EMPTY = "1"
 
@@ -14,7 +14,7 @@ require task-sdk-gmae.inc
 
 PACKAGES = "${PN} ${PN}-dbg"
 
-RDEPENDS = "\
+RDEPENDS_${PN} = "\
     task-poky-standalone-sdk-target \
     libglade-dev \
     ${SDK-GMAE} \
diff --git a/meta/recipes-graphics/cairo/cairo_1.10.0.bb b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
index d4d0703..59e5ff9 100644
--- a/meta/recipes-graphics/cairo/cairo_1.10.0.bb
+++ b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
@@ -2,14 +2,14 @@ require cairo.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e73e999e0c72b5ac9012424fa157ad77"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "70a2ece66cf473d976e2db0f75bf199e"
 SRC_URI[sha256sum] = "0f2ce4cc4615594088d74eb8b5360bad7c3cc3c3da9b61af9bfd979ed1ed94b2"
 
-RDEPENDS += "libcairo2 libcairo-gobject2 libcairo-script-interpreter2 \
+RDEPENDS_${PN} += "libcairo2 libcairo-gobject2 libcairo-script-interpreter2 \
 		  cairo-perf-utils"
 
 ALLOW_EMPTY = "1"
diff --git a/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb b/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb
index 633a4c2..f70aae3 100644
--- a/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb
+++ b/meta/recipes-graphics/libsdl/libsdl-nativesdk_1.2.11.bb
@@ -3,8 +3,8 @@ HOMEPAGE = "http://www.libsdl.org"
 SECTION = "libs"
 LICENSE = "LGPL"
 DEPENDS = "libx11-nativesdk libxext-nativesdk libxrandr-nativesdk libxrender-nativesdk"
-RDEPENDS = "libx11-nativesdk libxrandr-nativesdk libxrender-nativesdk libxext-nativesdk"
-PR = "r4"
+RDEPENDS_${PN} = "libx11-nativesdk libxrandr-nativesdk libxrender-nativesdk libxext-nativesdk"
+PR = "r5"
 
 SRC_URI = "http://www.libsdl.org/release/SDL-${PV}.tar.gz \
 	   file://acinclude.m4 \
diff --git a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
index 729c2a5..aebc11d 100644
--- a/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
+++ b/meta/recipes-graphics/xorg-app/mkfontdir_1.0.5.bb
@@ -3,8 +3,9 @@ require xorg-app-common.inc
 DESCRIPTION = "a program to create an index of X font files in a directory"
 
 PE = "1"
+PR = "r1"
 
-RDEPENDS += "mkfontscale"
+RDEPENDS_${PN} += "mkfontscale"
 
 BBCLASSEXTEND = "native"
 
diff --git a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
index f3b3716..a1c3c63 100644
--- a/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
+++ b/meta/recipes-graphics/xorg-font/font-alias_1.0.3.bb
@@ -10,11 +10,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bf0158b89be493d523d69d9f29265038 \
                     file://100dpi/fonts.alias;md5=85bebd6ca213aa656c301a72eb4397cb"
 
 DEPENDS = "virtual/xserver font-util"
-RDEPENDS = "encodings font-util"
-RDEPENDS_virtclass-native = "font-util"
+RDEPENDS_${PN} = "encodings font-util"
+RDEPENDS_${PN}_virtclass-native = "font-util"
 
 PE = "1"
-PR = "${INC_PR}.0"
+PR = "${INC_PR}.1"
 
 SRC_URI[md5sum] = "6d25f64796fef34b53b439c2e9efa562"
 SRC_URI[sha256sum] = "8b453b2aae1cfa8090009ca037037b8c5e333550651d5a158b7264ce1d472c9a"
diff --git a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
index 972e9e3..a04bd6d 100644
--- a/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-font/font-util_1.2.0.bb
@@ -12,10 +12,10 @@ PACKAGE_ARCH = "${BASE_PACKAGE_ARCH}"
 
 DEPENDS = "encodings util-macros"
 DEPENDS_virtclass-native = "util-macros-native"
-RDEPENDS = "mkfontdir mkfontscale encodings"
-RDEPENDS_virtclass-native = "mkfontdir-native mkfontscale-native"
+RDEPENDS_${PN} = "mkfontdir mkfontscale encodings"
+RDEPENDS_${PN}_virtclass-native = "mkfontdir-native mkfontscale-native"
 
-PR = "${INC_PR}.0"
+PR = "${INC_PR}.1"
 
 do_configure_prepend() {
         sed -i "s#MAPFILES_PATH=\`pkg-config#MAPFILES_PATH=\`PKG_CONFIG_PATH=\"${STAGING_LIBDIR_NATIVE}/pkg-config\" pkg-config#g" fontutil.m4.in
diff --git a/meta/recipes-graphics/xorg-font/xorg-font-common.inc b/meta/recipes-graphics/xorg-font/xorg-font-common.inc
index c2175a9..5d19b4c 100644
--- a/meta/recipes-graphics/xorg-font/xorg-font-common.inc
+++ b/meta/recipes-graphics/xorg-font/xorg-font-common.inc
@@ -5,10 +5,10 @@ SECTION = "x11/fonts"
 LICENSE = "MIT-X"
 
 DEPENDS = " encodings font-alias font-util-native mkfontdir-native mkfontscale-native"
-RDEPENDS = "encodings font-util font-alias"
+RDEPENDS_${PN} = "encodings font-util font-alias"
 
 XORG_PN = "${BPN}"
-INC_PR = "r1"
+INC_PR = "r2"
 
 SRC_URI = "${XORG_MIRROR}/individual/font/${XORG_PN}-${PV}.tar.bz2"
 S = "${WORKDIR}/${XORG_PN}-${PV}"
diff --git a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
index 9b89400..a42745f 100644
--- a/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
+++ b/meta/recipes-graphics/xorg-util/gccmakedep_1.0.2.bb
@@ -2,9 +2,9 @@ require xorg-util-common.inc
 LIC_FILES_CHKSUM = "file://Makefile.am;endline=20;md5=23c277396d690413245ebb89b18c5d4d"
 DESCRIPTION = "create dependencies in makefiles using 'gcc -M'"
 DEPENDS = "util-macros"
-RDEPENDS = "gcc"
+RDEPENDS_${PN} = "gcc"
 
-PR = "r2"
+PR = "r3"
 PE = "1"
 
 SRC_URI[md5sum] = "fc49f45251c1336fe1dad5dba1c83fcd"
diff --git a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
index 8943c2d..d770590 100644
--- a/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
+++ b/meta/recipes-graphics/xorg-util/imake_1.0.4.bb
@@ -2,11 +2,11 @@ require xorg-util-common.inc
 
 DESCRIPTION = "C preprocessor interface to the make utility"
 DEPENDS = "util-macros"
-RDEPENDS = "perl xproto"
+RDEPENDS_${PN} = "perl xproto"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=b9c6cfb044c6d0ff899eaafe4c729367"
 
-PR = "r0"
+PR = "r1"
 PE = "1"
 
 SRC_URI[md5sum] = "0fd1e53d94142ddee5340f87de0b9561"
diff --git a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
index 85e065f..eb707e0 100644
--- a/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
+++ b/meta/recipes-kernel/oprofile/oprofile_0.9.6.bb
@@ -12,10 +12,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 SECTION = "devel"
 
 DEPENDS = "popt binutils"
-RDEPENDS = "binutils-symlinks"
-RRECOMMENDS = "kernel-vmlinux"
+RDEPENDS_${PN} = "binutils-symlinks"
+RRECOMMENDS_${PN} = "kernel-vmlinux"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/oprofile/oprofile-${PV}.tar.gz \
            file://opstart.patch \
diff --git a/meta/recipes-kernel/oprofile/oprofile_cvs.bb b/meta/recipes-kernel/oprofile/oprofile_cvs.bb
index f2ff5ad..f2b5520 100644
--- a/meta/recipes-kernel/oprofile/oprofile_cvs.bb
+++ b/meta/recipes-kernel/oprofile/oprofile_cvs.bb
@@ -1,13 +1,13 @@
 PV = "0.9.4+cvs${SRCDATE}"
-PR = "r0"
+PR = "r1"
 SECTION = "devel"
 SUMMARY = "System-Wide Profiler"
 DESCRIPTION = "OProfile is a system-wide profiler for Linux systems, capable \
 of profiling all running code at low overhead."
 LICENSE = "GPL"
 DEPENDS = "popt binutils"
-RDEPENDS = "binutils-symlinks"
-RRECOMMENDS = "kernel-vmlinux"
+RDEPENDS_${PN} = "binutils-symlinks"
+RRECOMMENDS_${PN} = "kernel-vmlinux"
 
 DEFAULT_PREFERENCE = "-1"
 
diff --git a/meta/recipes-kernel/update-modules/update-modules_1.0.bb b/meta/recipes-kernel/update-modules/update-modules_1.0.bb
index 93bc149..a473bb5 100644
--- a/meta/recipes-kernel/update-modules/update-modules_1.0.bb
+++ b/meta/recipes-kernel/update-modules/update-modules_1.0.bb
@@ -4,8 +4,8 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/COPYING.GPL;md5=751419260aa954499f7abaabaa882bbe"
 
 PACKAGE_ARCH = "all"
-RDEPENDS = "${@base_contains("MACHINE_FEATURES", "kernel26",  "module-init-tools-depmod","modutils-depmod",d)} "
-PR = "r7"
+RDEPENDS_${PN} = "${@base_contains("MACHINE_FEATURES", "kernel26",  "module-init-tools-depmod","modutils-depmod",d)} "
+PR = "r8"
 
 SRC_URI = "file://update-modules \
            file://COPYING.GPL"
@@ -25,7 +25,7 @@ do_install() {
 # The Unslung distro uses a 2.4 kernel for a machine (the NSLU2) which
 # supports both 2.4 and 2.6 kernels.  Rather than forcing OE to have
 # to deal with that unique legacy corner case, we just nullify the
-# RDEPENDS here and handle it in the Unslung image recipe. I know this
+# RDEPENDS_${PN} here and handle it in the Unslung image recipe. I know this
 # is ugly.  Please don't remove it unless you first make the RDEPENDS
 # line at the top of this file understand that a machine can be used
 # in both a 2.4 kernel distro and a 2.6 kernel distro.  Really, it's
diff --git a/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb b/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
index a4cf815..5eb7e42 100644
--- a/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-openmax_0.10.1.bb
@@ -1,5 +1,5 @@
 DEPENDS = "gstreamer"
-RDEPENDS = "libomxil"
+RDEPENDS_${PN} = "libomxil"
 LICENSE = "LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24 \
                     file://util/sem.h;beginline=1;endline=20;md5=accce5550d5583b839b441a0623f09fc"
@@ -10,7 +10,7 @@ inherit autotools
 
 EXTRA_OECONF += "--disable-valgrind"
 
-PR = "r0"
+PR = "r1"
 
 FILES_${PN} += "${libdir}/gstreamer-0.10/libgstomx.so"
 FILES_${PN}-dev += "${libdir}/gstreamer-0.10/libgstomx.*a"
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
index 006efdf..cbc13da 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
                     file://gst/ffmpegcolorspace/utils.c;beginline=1;endline=20;md5=9c83a200b8e597b26ca29df20fc6ecd0"
 
 DEPENDS += "virtual/libx11 alsa-lib freetype gnome-vfs liboil libogg libvorbis libxv libtheora avahi"
-RDEPENDS += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-ftp \
+RDEPENDS_${PN} += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-ftp \
              gnome-vfs-plugin-sftp"
 
 SRC_URI += " file://gst-plugins-base-tremor.patch \
@@ -16,7 +16,7 @@ SRC_URI += " file://gst-plugins-base-tremor.patch \
 SRC_URI[md5sum] = "3ad90152b58563e1314af26c263f3c4c"
 SRC_URI[sha256sum] = "63938641380be9935c804ae8d55acdcfd93920ed2deb72dcf70f027a78b085d7"
 
-PR = "r2"
+PR = "r3"
 
 inherit gettext
 
diff --git a/meta/recipes-qt/qt-apps/fotowall_0.9.bb b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
index 30dca4e..1146ce9 100644
--- a/meta/recipes-qt/qt-apps/fotowall_0.9.bb
+++ b/meta/recipes-qt/qt-apps/fotowall_0.9.bb
@@ -7,8 +7,10 @@ LIC_FILES_CHKSUM = "file://GPL_V2;md5=79808397c3355f163c012616125c9e26 \
                     file://main.cpp;beginline=6;endline=11;md5=b569acc2bf8974a3082b58fc53b9d8dc"
 SECTION = "x11/apps"
 
+PR = "r1"
+
 DEPENDS = "qt4-x11-free"
-RDEPENDS = "qt4-x11-free"
+RDEPENDS_${PN} = "qt4-x11-free"
 
 SRC_URI = "http://qt-apps.org/CONTENT/content-files/71316-Fotowall-0.9.tar.bz2"
 
diff --git a/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb b/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
index c5afd91..a76f5ff 100644
--- a/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
+++ b/meta/recipes-qt/qt-apps/qmmp_0.4.1.bb
@@ -4,10 +4,10 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 SECTION = "multimedia"
 
-PR = "r1"
+PR = "r2"
 
 DEPENDS = "qt4-x11-free taglib"
-RDEPENDS = "qt4-x11-free libmad libvorbis libogg taglib alsa-lib curl"
+RDEPENDS_${PN} = "qt4-x11-free libmad libvorbis libogg taglib alsa-lib curl"
 
 SRC_URI = "http://qmmp.ylsoftware.com/files/qmmp-0.4.1.tar.bz2"
 
diff --git a/meta/recipes-qt/qt-apps/quicky_0.4.bb b/meta/recipes-qt/qt-apps/quicky_0.4.bb
index 004e029..54b326d 100644
--- a/meta/recipes-qt/qt-apps/quicky_0.4.bb
+++ b/meta/recipes-qt/qt-apps/quicky_0.4.bb
@@ -4,8 +4,10 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://version.h;endline=19;md5=878bdaff438dab86298301fd1a210e14"
 SECTION = "x11/apps"
 
+PR = "r1"
+
 DEPENDS = "qt4-x11-free"
-RDEPENDS = "qt4-x11-free"
+RDEPENDS_${PN} = "qt4-x11-free"
 
 SRC_URI = "http://qt-apps.org/CONTENT/content-files/80325-quicky-0.4.tar.gz"
 
diff --git a/meta/recipes-sato/eds/eds-tools_bzr.bb b/meta/recipes-sato/eds/eds-tools_bzr.bb
index 0dfcf59..9cead16 100644
--- a/meta/recipes-sato/eds/eds-tools_bzr.bb
+++ b/meta/recipes-sato/eds/eds-tools_bzr.bb
@@ -1,10 +1,10 @@
 LICENSE = "GPLv2"
 SECTION = "x11"
 DEPENDS = "dbus-glib eds-dbus"
-RDEPENDS = "libedata-book"
+RDEPENDS_${PN} = "libedata-book"
 DESCRIPTION = "Test applications for EDS"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "bzr://burtonini.com/bzr/eds-tools;proto=http"
 
diff --git a/meta/recipes-sato/gaku/gaku_svn.bb b/meta/recipes-sato/gaku/gaku_svn.bb
index a70863e..d1e2a3f 100644
--- a/meta/recipes-sato/gaku/gaku_svn.bb
+++ b/meta/recipes-sato/gaku/gaku_svn.bb
@@ -4,12 +4,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
                     file://main.c;beginline=1;endline=20;md5=0c02b4ef945956832b37a036b9cc103a"
 DEPENDS = "gtk+ gstreamer libowl-av"
 
-RDEPENDS = "gst-plugins-base-audioconvert \
+RDEPENDS_${PN} = "gst-plugins-base-audioconvert \
             gst-plugins-base-audioresample \
             gst-plugins-base-typefindfunctions \
             gst-plugins-base-playbin"
 
-RRECOMMENDS = "gst-plugins-good-id3demux \
+RRECOMMENDS_${PN} = "gst-plugins-good-id3demux \
                gst-plugins-base-vorbis \
                gst-plugins-base-alsa \
                gst-plugins-base-ogg \
@@ -17,7 +17,7 @@ RRECOMMENDS = "gst-plugins-good-id3demux \
 
 PV = "0.0+svnr${SRCREV}"
 
-PR = "r3"
+PR = "r4"
 
 SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http"
 
diff --git a/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb b/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
index af748f1..88484eb 100644
--- a/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
+++ b/meta/recipes-sato/matchbox-config-gtk/matchbox-config-gtk_svn.bb
@@ -7,9 +7,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://appearance/mb-appearance.c;endline=25;md5=ea92333cf8a6802639d62d874c114a28"
 
 DEPENDS = "gconf gtk+"
-RDEPENDS = "settings-daemon"
+RDEPENDS_${PN} = "settings-daemon"
 
 PV = "0.0+svnr${SRCREV}"
+PR = "r1"
 
 S = "${WORKDIR}/${PN}"
 
diff --git a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
index 0425fec..27686b2 100644
--- a/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
+++ b/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_svn.bb
@@ -8,10 +8,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://applet/applet.c;endline=20;md5=e9201b3efa0a81a160b88d6feb5cf75b"
 
 DEPENDS = "libfakekey expat libxft gtk+ matchbox-panel-2"
-RDEPENDS = "formfactor dbus-wait"
+RDEPENDS_${PN} = "formfactor dbus-wait"
 SECTION = "x11"
 PV = "0.0+svnr${SRCREV}"
-PR = "r4"
+PR = "r5"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
            file://configure_fix.patch;patch=1;maxrev=1819 \
diff --git a/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb b/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
index 96d644c..a4abea4 100644
--- a/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
+++ b/meta/recipes-sato/matchbox-sato/matchbox-session-sato_0.1.bb
@@ -6,8 +6,8 @@ LICENSE = "GPL"
 LIC_FILES_CHKSUM = "file://session;endline=3;md5=f8a5c5b9c279e52dc094d10e11c2be63"
 
 SECTION = "x11"
-RDEPENDS = "formfactor gtk-sato-engine matchbox-theme-sato gtk-theme-sato matchbox-panel-2 matchbox-desktop-sato initscripts matchbox-session"
-PR = "r27"
+RDEPENDS_${PN} = "formfactor gtk-sato-engine matchbox-theme-sato gtk-theme-sato matchbox-panel-2 matchbox-desktop-sato initscripts matchbox-session"
+PR = "r28"
 
 # This package is architecture specific because the session script is modified
 # based on the machine architecture.
diff --git a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
index 4eeeed6..15bd37a 100644
--- a/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
+++ b/meta/recipes-sato/owl-video-widget/libowl-av_svn.bb
@@ -9,11 +9,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=ac14b7ca45afea5af040da54db270eb0 \
 
 SECTION = "x11"
 DEPENDS = "gtk+ gstreamer gst-plugins-base"
-RDEPENDS = "gst-meta-base"
-RRECOMMENDS = "gst-meta-audio gst-meta-video"
+RDEPENDS_${PN} = "gst-meta-base"
+RRECOMMENDS_${PN} = "gst-meta-audio gst-meta-video"
 
 PV = "0.0+svnr${SRCREV}"
-PR = "r5"
+PR = "r6"
 
 S = "${WORKDIR}/${PN}"
 
diff --git a/meta/recipes-sato/pimlico/contacts.inc b/meta/recipes-sato/pimlico/contacts.inc
index a424295..ce990d7 100644
--- a/meta/recipes-sato/pimlico/contacts.inc
+++ b/meta/recipes-sato/pimlico/contacts.inc
@@ -6,7 +6,7 @@ LICENSE = "GPLv2 & GPLv2+ & GPLv3+ "
 SECTION = "x11"
 DEPENDS = "glib-2.0 gtk+ eds-dbus"
 DEPENDS_append_poky = " libowl"
-RDEPENDS = "libedata-book"
+RDEPENDS_${PN} = "libedata-book"
 
 inherit autotools pkgconfig
 
diff --git a/meta/recipes-sato/pimlico/contacts_0.9.bb b/meta/recipes-sato/pimlico/contacts_0.9.bb
index 1e46287..a9e3f15 100644
--- a/meta/recipes-sato/pimlico/contacts_0.9.bb
+++ b/meta/recipes-sato/pimlico/contacts_0.9.bb
@@ -1,5 +1,5 @@
 require contacts.inc
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI =+ "http://pimlico-project.org/sources/${PN}/${PN}-${PV}.tar.gz"
diff --git a/meta/recipes-sato/pimlico/contacts_git.bb b/meta/recipes-sato/pimlico/contacts_git.bb
index c375435..0d2e235 100644
--- a/meta/recipes-sato/pimlico/contacts_git.bb
+++ b/meta/recipes-sato/pimlico/contacts_git.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://src/contacts-gtk.c;endline=23;md5=e1ee9b9e72045f2d3aa44cf17313b46e"
 
 PV = "0.12+git${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 S = "${WORKDIR}/git"
 
diff --git a/meta/recipes-sato/pimlico/dates.inc b/meta/recipes-sato/pimlico/dates.inc
index 6ef7b60..01ab409 100644
--- a/meta/recipes-sato/pimlico/dates.inc
+++ b/meta/recipes-sato/pimlico/dates.inc
@@ -6,7 +6,7 @@ LICENSE = "GPLv2 & GPLv2+ & LGPLv2+"
 
 SECTION = "x11"
 DEPENDS = "glib-2.0 gtk+ libglade eds-dbus"
-RDEPENDS = "libedata-cal"
+RDEPENDS_${PN} = "libedata-cal"
 
 inherit autotools pkgconfig gtk-icon-cache
 
diff --git a/meta/recipes-sato/pimlico/dates_0.4.8.bb b/meta/recipes-sato/pimlico/dates_0.4.8.bb
index 13afc15..ca88a73 100644
--- a/meta/recipes-sato/pimlico/dates_0.4.8.bb
+++ b/meta/recipes-sato/pimlico/dates_0.4.8.bb
@@ -1,5 +1,5 @@
 require dates.inc
 
-PR = "r3"
+PR = "r4"
 
 SRC_URI = "http://pimlico-project.org/sources/dates/dates-${PV}.tar.gz"
diff --git a/meta/recipes-sato/pimlico/dates_git.bb b/meta/recipes-sato/pimlico/dates_git.bb
index d09f4e6..bceeec6 100644
--- a/meta/recipes-sato/pimlico/dates_git.bb
+++ b/meta/recipes-sato/pimlico/dates_git.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://src/gconf-bridge.c;endline=22;md5=ad7626c6daf4aec590474a243f4912fa"
 
 PV = "0.4.11+git${SRCPV}"
-PR = "r1"
+PR = "r2"
 
 S = "${WORKDIR}/git"
 
diff --git a/meta/recipes-support/enchant/enchant_1.6.0.bb b/meta/recipes-support/enchant/enchant_1.6.0.bb
index 7df4f97..a3ef379 100644
--- a/meta/recipes-support/enchant/enchant_1.6.0.bb
+++ b/meta/recipes-support/enchant/enchant_1.6.0.bb
@@ -6,11 +6,11 @@ LICENSE     = "LGPLv2.1+"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=dfcbabf9131dc9a95febef6753a2958b \
                     file://src/enchant.h;beginline=1;endline=29;md5=8d881caa1d37523567e1d8f726675a18"
 DEPENDS     = "aspell glib-2.0"
-RDEPENDS    = "aspell"
+RDEPENDS_${PN}    = "aspell"
 
 inherit autotools pkgconfig
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://www.abisource.com/downloads/enchant/${PV}/enchant-${PV}.tar.gz"
 
diff --git a/meta/recipes-support/hal/hal.inc b/meta/recipes-support/hal/hal.inc
index 839dfd0..ee6c7ba 100644
--- a/meta/recipes-support/hal/hal.inc
+++ b/meta/recipes-support/hal/hal.inc
@@ -7,7 +7,7 @@ LICENSE = "GPLv2+ | AFL"
 LIC_FILES_CHKSUM = "file://COPYING;md5=5b5ffd59fbb7c2fff6de76c94177af31"
 
 DEPENDS = "virtual/kernel dbus-glib udev util-linux intltool intltool-native expat libusb gperf-native"
-RDEPENDS += "udev hal-info"
+RDEPENDS_${PN} += "udev hal-info"
 
 SRC_URI = "http://hal.freedesktop.org/releases/hal-${PV}.tar.gz \
            file://20hal"
diff --git a/meta/recipes-support/hal/hal_0.5.14.bb b/meta/recipes-support/hal/hal_0.5.14.bb
index f9437f8..8b82ca8 100644
--- a/meta/recipes-support/hal/hal_0.5.14.bb
+++ b/meta/recipes-support/hal/hal_0.5.14.bb
@@ -1,6 +1,6 @@
 require hal.inc
 
-PR = "r2"
+PR = "r3"
 
 EXTRA_OECONF += "--with-linux-input-header=${STAGING_INCDIR}/linux/input.h"
 EXTRA_OEMAKE += "-e 'udevrulesdir=$(sysconfdir)/udev/rules.d'"
diff --git a/meta/recipes-support/hal/hal_git.bb b/meta/recipes-support/hal/hal_git.bb
index baed472..483867f 100644
--- a/meta/recipes-support/hal/hal_git.bb
+++ b/meta/recipes-support/hal/hal_git.bb
@@ -1,7 +1,7 @@
 require hal.inc
 
 PV = "0.5.9.1+git${SRCDATE}"
-PR = "r7"
+PR = "r8"
 
 SRC_URI = "git://anongit.freedesktop.org/hal/;protocol=git \
         file://20hal \
-- 
1.6.6.1


