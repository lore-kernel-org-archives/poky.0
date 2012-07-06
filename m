Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6E01E0142A
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 20:56:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Jul 2012 20:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="161966918"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.157])
	by orsmga001.jf.intel.com with ESMTP; 05 Jul 2012 20:56:23 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  5 Jul 2012 20:56:22 -0700
Message-Id: <1341546982-20140-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] upstream_tracking: Update manual checks and Header info
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
X-List-Received-Date: Fri, 06 Jul 2012 03:56:23 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   45 ++++++++-----------
 1 files changed, 19 insertions(+), 26 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 348cee3..c116fdc 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -9,16 +9,19 @@
 #
 #       RECIPE_UPSTREAM_VERSION_pn-<recipe name> = "<version>"
 #       RECIPE_UPSTREAM_DATE_pn-<recipe name> = "Mmm dd, YYYY"
+#	 - This is the latest upstream version and date
 #       RECIPE_NO_UPDATE_REASON_pn-<recipe name> = "<free form text>"
 #        - Used to note why a recipe should not be upgraded to a newer versoin
 #       CHECK_DATE_pn-<recipe name> = "Mmm dd, YYYY"
 #        - This is the date that upstream was last manually checked over time
 #          this should be removed as we automate this checking
 #
+# These entries will slowly be removed as we can automatically determine
+# the information in this file.  So for existing recipes that we can get 
+# from the package reporting system, the entries here can be removed.
+#
 # Please keep this list in alphabetical order.
 #
-RECIPE_UPSTREAM_VERSION_pn-acl = "2.2.49"
-RECIPE_UPSTREAM_DATE_pn-acl = "Nov 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-acpid = "1.0.10"
 RECIPE_UPSTREAM_DATE_pn-acpid = "Apr 22, 2009"
 CHECK_DATE_pn-acpid = "Apr 25, 2012"
@@ -37,11 +40,7 @@ RECIPE_UPSTREAM_VERSION_pn-at = "3.1.13"
 RECIPE_UPSTREAM_VERSION_pn-atk = "1.32.0"
 RECIPE_UPSTREAM_DATE_pn-atk = "Sep 01, 2010"
 CHECK_DATE_pn-at = "Mar 15, 2012"
-RECIPE_UPSTREAM_VERSION_pn-attr = "2.4.44"
-RECIPE_UPSTREAM_DATE_pn-attr = "Aug 01, 2009"
 RECIPE_UPSTREAM_DATE_pn-at = "unknown"
-RECIPE_UPSTREAM_VERSION_pn-augeas = "0.10.0"
-RECIPE_UPSTREAM_DATE_pn-augeas = "Dec 02, 2011"
 RECIPE_UPSTREAM_VERSION_pn-autoconf="2.68"
 RECIPE_NO_UPDATE_REASON_pn-autoconf="seeing rpm issue with the 2.68 version, a bug is open"
 RECIPE_UPSTREAM_VERSION_pn-autogen = "5.12"
@@ -52,7 +51,6 @@ CHECK_DATE_pn-automake = "Mar 14, 2012"
 RECIPE_UPSTREAM_DATE_pn-avahi-ui = "Oct 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-avahi = "0.6.31"
 RECIPE_UPSTREAM_DATE_pn-avahi = "Oct 01, 2010"
-RECIPE_UPSTREAM_DATE_pn-base-files = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-bash = "4.1"
 RECIPE_UPSTREAM_DATE_pn-bash = "Dec 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-bc = "1.06"
@@ -82,7 +80,7 @@ RECIPE_UPSTREAM_DATE_pn-bluez4="Jan 13, 2012"
 CHECK_DATE_pn-bluez4 = "Jan 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-boost-jam-native = "Jun 28, 2012"
 RECIPE_UPSTREAM_VERSION_pn-boost = "1.50.0"
-CHECK_DATE_pn-boost = "Jun 28, 2012"
+CHECK_DATE_pn-boost = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-boost = "Feb 24, 2012"
 RECIPE_UPSTREAM_VERSION_pn-btrfs-tools="git"
 RECIPE_UPSTREAM_VERSION_pn-busybox = "1.16.2"
@@ -122,7 +120,7 @@ RECIPE_UPSTREAM_VERSION_pn-connman = "0.65"
 RECIPE_UPSTREAM_DATE_pn-connman="Dec 24, 2010"
 RECIPE_UPSTREAM_VERSION_pn-console-tools = "0.3.2"
 RECIPE_UPSTREAM_DATE_pn-console-tools = "Feb 18, 2002"
-CHECK_DATE_pn-console-tools = "Jun 22, 2012"
+CHECK_DATE_pn-console-tools = "Jul 05, 2012"
 RECIPE_UPSTREAM_VERSION_pn-consolekit = "0.4.3"
 RECIPE_UPSTREAM_VERSION_pn-contacts = "0.12+git0+19853893fdb595de6aa59db0d9dc2f9451ed2933"
 RECIPE_UPSTREAM_DATE_pn-contacts = "Nov 01, 2009"
@@ -132,7 +130,7 @@ RECIPE_UPSTREAM_DATE_pn-coreutils = "Apr 01, 2011"
 RECIPE_UPSTREAM_VERSION_pn-cpio = "2.11"
 RECIPE_UPSTREAM_DATE_pn-cpio = "Mar 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-cracklib="2.8.19"
-CHECK_DATE_pn-cracklib = "Jun 22, 2012"
+CHECK_DATE_pn-cracklib = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-cracklib = "May 18, 2010"
 RECIPE_UPSTREAM_VERSION_pn-createrepo = "0.9.9"
 RECIPE_NO_UPDATE_REASON_pn-createrepo = "Versions after 0.9.* use YUM, so we hold at 0.4.11"
@@ -157,13 +155,11 @@ RECIPE_UPSTREAM_DATE_pn-db = "n/a"
 RECIPE_UPSTREAM_DATE_pn-dbus-glib = "Nov 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-dbus = "1.4.16"
 RECIPE_UPSTREAM_DATE_pn-dbus = "Sep 21, 2011"
-RECIPE_NO_UPDATE_REASON_pn-dbus = "the odd 1.5.8 is not stable version, 1.4.16 is the latest stable version."
 RECIPE_UPSTREAM_VERSION_pn-dhcp = "4.2.3"
 RECIPE_UPSTREAM_DATE_pn-dhcp = "Oct 19, 2011"
 RECIPE_NO_UPDATE_REASON_pn-dhcp = "We are at latest P2 version"
 RECIPE_UPSTREAM_VERSION_pn-diffstat="1.54"
 RECIPE_UPSTREAM_VERSION_pn-diffutils = "3.2"
-RECIPE_NO_UPDATE_REASON_pn-diffutils = "3.2 is the latest version"
 RECIPE_UPSTREAM_DATE_pn-direcfb = "Aug 9, 2011"
 RECIPE_UPSTREAM_VERSION_pn-directfb = "1.5.3"
 RECIPE_UPSTREAM_VERSION_pn-distcc="2.18.3"
@@ -267,7 +263,7 @@ RECIPE_UPSTREAM_VERSION_pn-ghostscript = "9.05"
 CHECK_DATE_pn-ghostscript = "Mar 14, 2012"
 RECIPE_LATEST_VERIONS_pn-git = "1.7.3.4"
 RECIPE_UPSTREAM_VERSION_pn-glew = "1.7.0"
-CHECK_DATE_pn-glew = "Jun 22, 2012"
+CHECK_DATE_pn-glew = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-glew = "Aug 26, 2011"
 RECIPE_UPSTREAM_DATE_pn-glib-2.0 = "Nov 11, 2011"
 RECIPE_UPSTREAM_VERSION_pn-glibc = "2.11.2"
@@ -372,7 +368,7 @@ RECIPE_UPSTREAM_DATE_pn-latencytop = "Apr 28, 2009"
 RECIPE_UPSTREAM_VERSION_pn-leafpad = "0.8.18.1"
 RECIPE_UPSTREAM_DATE_pn-leafpad = "Dec 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-less = "444"
-CHECK_DATE_pn-less = "Jun 22, 2012"
+CHECK_DATE_pn-less = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-less = "Jun 9, 2011"
 RECIPE_UPSTREAM_VERSION_pn-liba52="0.7.4"
 CHECK_DATE_pn-liba52 = "Jan 30, 2011"
@@ -390,10 +386,10 @@ CHECK_DATE_pn-libassuan = "Nov 22, 2011"
 RECIPE_UPSTREAM_DATE_pn-libatomics-ops = "unknown"
 RECIPE_UPSTREAM_VERSION_pn-libcanberra = "0.26"
 RECIPE_UPSTREAM_VERSION_pn-libcap = "2.22"
-CHECK_DATE_pn-libcap = "Jun 22, 2012"
+CHECK_DATE_pn-libcap = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-libcap = "Jan 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-libcheck = "0.9.8"
-CHECK_DATE_pn-libcheck = "Jun 22, 2012"
+CHECK_DATE_pn-libcheck = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-libcheck = "Sep 23, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libconvert-asn1-perl="0.22"
 RECIPE_UPSTREAM_VERSION_pn-libcroco = "0.6.3"
@@ -412,7 +408,7 @@ CHECK_DATE_pn-libevent = "Jan 12, 2012"
 RECIPE_UPSTREAM_DATE_pn-libevent = "Nov 18, 2011"
 RECIPE_UPSTREAM_DATE_pn-libexif = "Dec 12, 2010"
 RECIPE_UPSTREAM_VERSION_pn-libexif = "0.6.20"
-CHECK_DATE_pn-libexif = "Jun 22, 2012"
+CHECK_DATE_pn-libexif = "Jul 05, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libfakekey = "0.0+svnr2031"
 RECIPE_UPSTREAM_DATE_pn-libfakekey = "Jul 01, 2006"
 RECIPE_UPSTREAM_VERSION_pn-libffi  = "3.0.10"
@@ -461,7 +457,7 @@ RECIPE_UPSTREAM_DATE_pn-libjson = "Jul 31, 2009"
 RECIPE_UPSTREAM_VERSION_pn-liblbxutil = "1.1.0"
 RECIPE_UPSTREAM_DATE_pn-liblbxutil = "Dec 4, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libmad = "0.15.1b"
-CHECK_DATE_pn-libmad = "Jun 22, 2012"
+CHECK_DATE_pn-libmad = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-libmad = "Feb 18, 2004"
 RECIPE_UPSTREAM_VERSION_pn-libmatchbox = "1.9"
 RECIPE_UPSTREAM_DATE_pn-libmatchbox = "Aug 01, 2006"
@@ -549,7 +545,6 @@ RECIPE_UPSTREAM_VERSION_pn-libvorbis="1.3.2"
 RECIPE_UPSTREAM_DATE_pn-libvorbis="Nov 01, 2010"
 RECIPE_UPSTREAM_DATE_pn-libx11-diet = "Nov 10, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libx11 = "1.4.99.1"
-RECIPE_NO_UPDATE_REASON_pn-libx11 = "Do not upgrade to version: 1.4.99.1 because this is a development version"
 RECIPE_UPSTREAM_DATE_pn-libx11 = "Nov 10, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libxau = "1.0.5"
 RECIPE_UPSTREAM_DATE_pn-libxau = "Aug 01, 2009"
@@ -579,7 +574,6 @@ RECIPE_UPSTREAM_VERSION_pn-libxft = "2.1.14"
 RECIPE_UPSTREAM_DATE_pn-libxft = "Oct 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libxi = "1.5.99.2"
 RECIPE_UPSTREAM_DATE_pn-libxi = "Dec 21, 2011"
-RECIPE_NO_UPDATE_REASON_pn-libxi = "Do not upgrade to version: 1.5.99.2 because this is a development version that requres inputproto >= 2.0.99.1"
 RECIPE_UPSTREAM_VERSION_pn-libxinerama = "1.1"
 RECIPE_UPSTREAM_DATE_pn-libxinerama = "Oct 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libxkbfile = "1.0.6"
@@ -792,7 +786,7 @@ RECIPE_UPSTREAM_VERSION_pn-procps = "3.2.8"
 RECIPE_UPSTREAM_VERSION_pn-pseudo = "1.2"
 CHECK_DATE_pn-pseudo = "Nov 02, 2011"
 RECIPE_UPSTREAM_VERSION_pn-psmisc = "22.19"
-CHECK_DATE_pn-psmisc = "Jun 22, 2012"
+CHECK_DATE_pn-psmisc = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-psmisc = "Jun 22, 2012"
 RECIPE_UPSTREAM_VERSION_pn-psplash = "0.0+svnr424"
 RECIPE_UPSTREAM_DATE_pn-psplash = "May 01, 2009"
@@ -808,7 +802,7 @@ CHECK_DATE_pn-python = "May 01, 2012"
 RECIPE_UPSTREAM_DATE_pn-qemu-helper-native = "n/a"
 RECIPE_UPSTREAM_VERSION_pn-qemu = "0.13.0"
 RECIPE_UPSTREAM_VERSION_pn-qemugl="0.0+git0+d888bbc723c00d197d34a39b5b7448660ec1b1c0"
-CHECK_DATE_pn-qemugl= "Apr 18, 2012"
+CHECK_DATE_pn-qemugl= "Jul 05, 2012"
 RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because the upstream is broken in x86_64 build"
 RECIPE_UPSTREAM_DATE_pn-qemugl="May 30, 2009"
 RECIPE_UPSTREAM_DATE_pn-qemu = "Oct 01, 2010"
@@ -876,7 +870,7 @@ RECIPE_UPSTREAM_VERSION_pn-speex="1.2rc1"
 RECIPE_UPSTREAM_DATE_pn-speex="Jul 24, 2008"
 RECIPE_UPSTREAM_VERSION_pn-sqlite3 = "3.7.13"
 RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Jun 11, 2012"
-CHECK_DATE_pn-sqlite3= "Jun 22, 2012"
+CHECK_DATE_pn-sqlite3= "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-squashfs-tools = "Feb 28, 2011"
 RECIPE_UPSTREAM_DATE_pn-startup-notification = "May 16, 2011"
 RECIPE_UPSTREAM_VERSION_pn-stat = "3.3"
@@ -889,7 +883,7 @@ CHECK_DATE_pn-subversion = "Jan 25, 2011"
 RECIPE_UPSTREAM_VERSION_pn-sudo = "1.8.5p2"
 RECIPE_UPSTREAM_DATE_pn-sudo = "May 29, 2012"
 RECIPE_UPSTREAM_VERSION_pn-sysfsutils = "2.1.0"
-CHECK_DATE_pn-sysfsutils = "Jun 22, 2012"
+CHECK_DATE_pn-sysfsutils = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-sysfsutils = "Aug 23, 2006"
 RECIPE_UPSTREAM_VERSION_pn-sysklogd = "1.5"
 RECIPE_UPSTREAM_VERSION_pn-syslinux = "4.03"
@@ -899,7 +893,7 @@ RECIPE_UPSTREAM_VERSION_pn-sysprof = "1.1.6"
 RECIPE_UPSTREAM_VERSION_pn-sysprof = "6b5b8432711ef5c747f8375073cd9af88922d3c6"
 RECIPE_UPSTREAM_DATE_pn-sysprof = "Dec 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-sysstat = "10.0.5"
-CHECK_DATE_pn-sysstat = "Jun 22, 2012"
+CHECK_DATE_pn-sysstat = "Jul 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-sysstat = "May 16, 2012"
 RECIPE_UPSTREAM_VERSION_pn-sysvinit = "2.88dsf"
 RECIPE_UPSTREAM_DATE_pn-sysvinit = "Apr 01, 2010"
@@ -1026,7 +1020,6 @@ RECIPE_UPSTREAM_VERSION_pn-xinit="1.3.2"
 RECIPE_UPSTREAM_DATE_pn-xinit="Jan 27, 2012"
 RECIPE_UPSTREAM_VERSION_pn-xinput = "1.14"
 RECIPE_UPSTREAM_DATE_pn-xinput = "Aug 07, 2011"
-RECIPE_NO_UPDATE_REASON_pn-xinput = "Don't Update to unstable 1.5.99.1"
 RECIPE_UPSTREAM_VERSION_pn-xkbcomp="1.2.3"
 RECIPE_UPSTREAM_DATE_pn-xkbcomp="Jun 21, 2011"
 RECIPE_UPSTREAM_DATE_pn-xkeyboard-config = "Sep 15, 2011"
-- 
1.7.7.6


