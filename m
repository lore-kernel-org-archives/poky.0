Return-Path: <constantinx.musca@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 206E4E01484
	for <poky@yoctoproject.org>; Tue,  5 Mar 2013 07:15:04 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2013 07:13:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,787,1355126400"; d="scan'208";a="271334844"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2013 07:15:02 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Tue,  5 Mar 2013 17:15:54 +0200
Message-Id: <1362496554-27348-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] upstream_tracking: update no-upgrade reasons
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Mar 2013 15:15:04 -0000

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      | 43 ++++++++++++++++++++--
 1 file changed, 40 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 52d35dc..d7f13f9 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -66,12 +66,28 @@ CHECK_DATE_pn-fstests = "Jul 06, 2011"
 RECIPE_UPSTREAM_VERSION_pn-gaku="0.0+svnr399"
 RECIPE_UPSTREAM_DATE_pn-gaku="Jul 03, 2008"
 CHECK_DATE_pn-gaku = "Aug 29, 2012"
+RECIPE_UPSTREAM_VERSION_pn-gdk-pixbuf = "2.27.2"
+RECIPE_UPSTREAM_DATE_pn-gdk-pixbuf = "Mar 3, 2013"
+CHECK_DATE_pn-gdk-pixbuf = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-gdk-pixbuf = "2.27.2 is unstable"
 RECIPE_UPSTREAM_VERSION_pn-glibc = "2.11.2"
 RECIPE_UPSTREAM_DATE_pn-glibc = "May 01, 2010"
 RECIPE_NO_UPDATE_REASON_pn-glibc = "two glibc plugins are based on 2.10.1"
 RECIPE_UPSTREAM_VERSION_pn-gmp="5.0.5"
 RECIPE_UPSTREAM_DATE_pn-gmp = "Jul 05, 2012"
 CHECK_DATE_pn-gmp = "Aug 28, 2012"
+RECIPE_UPSTREAM_VERSION_pn-gnome-desktop = "3.7.90"
+RECIPE_UPSTREAM_DATE_pn-gnome-desktop = "Feb 19, 2013"
+CHECK_DATE_pn-gnome-desktop = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-gnome-desktop = "waiting for the sato gtk3 port"
+RECIPE_UPSTREAM_VERSION_pn-gnome-icon-theme = "3.7.4"
+RECIPE_UPSTREAM_DATE_pn-gnome-icon-theme = "Jan 17, 2013"
+CHECK_DATE_pn-gnome-icon-theme = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-gnome-icon-theme = "waiting for the sato gtk3 port"
+RECIPE_UPSTREAM_VERSION_pn-gnome-keyring = "3.7.91"
+RECIPE_UPSTREAM_DATE_pn-gnome-keyring = "Mar 4, 2013"
+CHECK_DATE_pn-gnome-keyring = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-gnome-keyring = "waiting for the sato gtk3 port"
 RECIPE_NO_UPDATE_REASON_pn-gobject_introspection = "Does not cross-compile"
 RECIPE_NO_UPDATE_REASON_pn-groff = "1.18.1.4 is latest GPLv2 Version no 1.21"
 RECIPE_NO_UPDATE_REASON_pn-grub="grub2 is a different thing"
@@ -83,12 +99,24 @@ RECIPE_NO_UPDATE_REASON_pn-gst-plugins-good = "not compatible with gst-fluendo 0
 RECIPE_NO_UPDATE_REASON_pn-gst-plugins-ugly = "not compatible with gst-fluendo 0.10.x"
 RECIPE_NO_UPDATE_REASON_pn-gstreamer=" not compatible with gst-fluendo 0.10.x "
 RECIPE_NO_UPDATE_REASON_pn-gtk+ = "Do not upgrade to version: 2.99.2 because prefer stable tree"
+RECIPE_UPSTREAM_VERSION_pn-gtk-engines = "2.91.1"
+RECIPE_UPSTREAM_DATE_pn-gtk-engines = "Oct 9, 2010"
+CHECK_DATE_pn-gtk-engines = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-gtk-engines = "2.91.1 is a 3.0 beta release"
 RECIPE_UPSTREAM_VERSION_pn-icu = "4.8.1.1"
 RECIPE_UPSTREAM_DATE_pn-icu = "Oct 10, 2011"
 CHECK_DATE_pn-icu = "Aug 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-initscripts = "9.40"
 RECIPE_UPSTREAM_DATE_pn-initscripts = "Aug 06, 2012"
 CHECK_DATE_pn-initscripts = "Aug 29, 2012"
+RECIPE_UPSTREAM_VERSION_pn-inputproto = "2.2.99.1"
+RECIPE_UPSTREAM_DATE_pn-inputproto = "Jan 5, 2013"
+CHECK_DATE_pn-inputproto = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-inputproto = "2.2.99.1 is unstable"
+RECIPE_UPSTREAM_VERSION_pn-jpeg = "9"
+RECIPE_UPSTREAM_DATE_pn-jpeg = "Jan 13, 2013"
+CHECK_DATE_pn-jpeg = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-jpeg = "webkit-gtk 1.8.3 doesn't work with jpeg 9"
 RECIPE_NO_UPDATE_REASON_pn-kernelshark = "0.2 is the latest version."
 RECIPE_UPSTREAM_VERSION_pn-keymaps = "1.0"
 RECIPE_UPSTREAM_DATE_pn-keymaps = "n/a"
@@ -96,14 +124,19 @@ RECIPE_UPSTREAM_VERSION_pn-kmod = "9"
 RECIPE_UPSTREAM_DATE_pn-kmod = "Jun 19, 2012"
 CHECK_DATE_pn-kmod = "Jul 27, 2012"
 RECIPE_NO_UPDATE_REASON_pn-liberation-fonts = "2.00.0 - fontforge package required "
+RECIPE_UPSTREAM_VERSION_pn-libgnome-keyring = "3.7.91"
+RECIPE_UPSTREAM_DATE_pn-libgnome-keyring = "Mar 4, 2013"
+CHECK_DATE_pn-libgnome-keyring = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-libgnome-keyring = "waiting for the sato gtk3 port"
 RECIPE_UPSTREAM_VERSION_pn-libiconv = "1.14"
 RECIPE_UPSTREAM_DATE_pn-libiconv = "Aug 07, 2011"
 CHECK_DATE_pn-libiconv = "Aug 30, 2012"
 RECIPE_NO_UPDATE_REASON_pn-libnl = "libnl-3.2.2 is incompatible with libnl2, so no Upgrade"
 RECIPE_NO_UPDATE_REASON_pn-libpng = "1.4.3 and later changes the API and breaks libmatchbox. Sticking with the 1.2.x series instead"
-RECIPE_UPSTREAM_VERSION_pn-libsoup = "2.39.90"
-RECIPE_UPSTREAM_DATE_pn-libsoup = "Aug 20, 2012"
-CHECK_DATE_pn-libsoup = "Aug 30, 2012"
+RECIPE_UPSTREAM_VERSION_pn-libsoup = "2.41.90"
+RECIPE_UPSTREAM_DATE_pn-libsoup = "Feb 19, 2013"
+CHECK_DATE_pn-libsoup = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-libsoup = "2.41.90 is unstable"
 RECIPE_NO_UPDATE_REASON_pn-libtheora = "1.1.1 is latest stable release not 1.2.0alpha1"
 RECIPE_NO_UPDATE_REASON_pn-libunique = "Do not upgrade to version: 2.91.4 because it requires gtk+ >= 2.90.0 and the stable version of gtk+ used by poky is 2.20.1"
 RECIPE_UPSTREAM_VERSION_pn-liburcu = "0.7.0"
@@ -184,6 +217,10 @@ RECIPE_UPSTREAM_VERSION_pn-usbinit = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-usbutils = "006"
 RECIPE_UPSTREAM_DATE_pn-usbutils = "Jul 06, 2012"
 CHECK_DATE_pn-usbutils = "Sep 03, 2012"
+RECIPE_UPSTREAM_VERSION_pn-webkit-gtk = "1.10.2"
+RECIPE_UPSTREAM_DATE_pn-webkit-gtk = "Dec 12, 2012"
+CHECK_DATE_pn-webkit-gtk = "Mar 5, 2013"
+RECIPE_NO_UPDATE_REASON_pn-webkit-gtk = ">= 1.10.2 needs ruby"
 RECIPE_UPSTREAM_DATE_pn-x11-common="Sep 22, 2008"
 RECIPE_UPSTREAM_VERSION_pn-x11-common = "1:7.6"
 CHECK_DAte_pn-x11-common = "Sep 03, 2012"
-- 
1.7.11.7


