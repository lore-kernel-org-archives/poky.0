Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A010D4C811F7
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="377275618"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001xp-MY; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <367faa2e0017fb820b133b17dd3cdebca61b3948.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 13:54:44 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/7] distro-tracking: update some tracking fields
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
X-List-Received-Date: Thu, 20 Jan 2011 09:30:28 -0000

removing some dated items to make the fields more concise.

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |  122 ++++----------------
 1 files changed, 24 insertions(+), 98 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 5b0c944..0256ef0 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1,4 +1,4 @@
-RECIPE_STATUS_pn-diffutils = "red"
+RECIPE_STATUS_pn-diffutils = "green"
 RECIPE_LATEST_VERSION_pn-diffutils = "3.0"
 RECIPE_LAST_UPDATE_pn-diffutils = "Dec 10, 2010"
 RECIPE_MAINTAINER_pn-diffutils = "Qing He <qing.he@intel.com>"
@@ -215,14 +215,9 @@ RECIPE_LAST_UPDATE_pn-expat = "Jul 7, 2010"
 RECIPE_MAINTAINER_pn-expat = "Kevin Tian <kevin.tian@intel.com>"
 
 RECIPE_STATUS_pn-dbus = "green"
-RECIPE_DEPENDENCY_CHECK_pn-dbus = "not done"
-RECIPE_LATEST_VERSION_pn-dbus = "1.2.24"
-RECIPE_PATCH_pn-dbus+tmpdir = "an old patch dated to 2005; no exact commit; seems to handle tmp dir check at build time. need test whether valid now"
-RECIPE_PATCH_pn-dbus+fix-install-daemon = "by RP; 2009; 8e39848b; handle dbus-daemon install; need more study later"
+RECIPE_LATEST_VERSION_pn-dbus = "1.4.1"
 RECIPE_INTEL_SECTION_pn-dbus = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-dbus = "1 months"
 RECIPE_LATEST_RELEASE_DATE_pn-dbus = "03/2010"
-RECIPE_COMMENTS_pn-dbus = "unstable version at 1.3.1; though current latest version in poky is 1.2.14, it's 1.2.4 preferred"
 RECIPE_LAST_UPDATE_pn-dbus = "Nov 17, 2010"
 RECIPE_MAINTAINER_pn-dbus = "Qing He <qing.he@intel.com>"
 
@@ -323,27 +318,20 @@ RECIPE_LATEST_RELEASE_DATE_pn-libtirpc = "11/2009"
 RECIPE_COMMENTS_pn-libtirpc = ""
 RECIPE_LAST_UPDATE_pn-libtirpc = "Sep 1, 2010"
 RECIPE_MAINTAINER_pn-libtirpc = "Dongxiao Xu <dongxiao.xu@intel.com>"
+
 RECIPE_STATUS_pn-gdbm = "green"
 RECIPE_LAST_UPDATE_pn-gdbm = "Jul 21, 2006"
 RECIPE_MAINTAINER_pn-gdbm = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-gdbm = "not done"
 RECIPE_LATEST_VERSION_pn-gdbm = "1.8.3"
-RECIPE_PATCH_pn-gdbm+makefile = "use oe generic DESTDIR instead of package specific INSTALL_ROOT"
-RECIPE_PATCH_pn-gdbm+libtool-mode = "explict specify install mode in libtool"
 RECIPE_INTEL_SECTION_pn-gdbm = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-gdbm = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-gdbm = "10/2002"
-RECIPE_COMMENTS_pn-gdbm = ""
 
 RECIPE_STATUS_pn-pth = "yellow"    # custom do_configure
 RECIPE_LAST_UPDATE_pn-pth = "Mar 14, 2008"
 RECIPE_MAINTAINER_pn-pth = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-pth = "not done"
 RECIPE_LATEST_VERSION_pn-pth = "2.0.7"
 RECIPE_INTEL_SECTION_pn-pth = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-pth = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-pth = "06/2006"
-RECIPE_COMMENTS_pn-pth = ""
 
 RECIPE_STATUS_pn-python-pycurl = "yellow"  # several exports to work with python
 RECIPE_LAST_UPDATE_pn-python-pycurl = "Mar 25, 2010"
@@ -377,17 +365,12 @@ RECIPE_LATEST_RELEASE_DATE_pn-libusb-compat = "07/2009"
 RECIPE_COMMENTS_pn-libusb-compat = "replaces libusb, but doesn't provides libusbpp"
 DISTRO_PN_ALIAS_pn-libusb-compat = "OSPDT"
 
-RECIPE_STATUS_pn-libnl = "yellow"    # still need to update to git
+RECIPE_STATUS_pn-libnl = "green"
 RECIPE_LAST_UPDATE_pn-libnl = "Nov 15, 2010"
 RECIPE_MAINTAINER_pn-libnl = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-libnl = "not done"
 RECIPE_LATEST_VERSION_pn-libnl = "2.0"
-RECIPE_PATCH_pn-libnl+local-includes = "fix compilation in Makefile"
-RECIPE_PATCH_pn-libnl+compilefix = "fix compilation"
 RECIPE_INTEL_SECTION_pn-libnl = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libnl = "n/a"
-RECIPE_LATEST_RELEASE_DATE_pn-libnl = "01/2008"
-RECIPE_COMMENTS_pn-libnl = "git is active and ~150 commits ahead of 1.1"
+RECIPE_LATEST_RELEASE_DATE_pn-libnl = "10/2010"
 
 RECIPE_STATUS_pn-zlib = "yellow"  # local config scripts
 RECIPE_LAST_UPDATE_pn-zlib = "Jun 11, 2010"
@@ -449,16 +432,11 @@ RECIPE_LATEST_RELEASE_DATE_pn-gnutls = "03/2010"
 RECIPE_COMMENTS_pn-gnutls = "requires libtasn1, but has an internal copy"
 
 RECIPE_STATUS_pn-lzo = "green"
-RECIPE_LAST_UPDATE_pn-lzo = "Jun 25, 2010"
+RECIPE_LAST_UPDATE_pn-lzo = "Dec 31, 2010"
 RECIPE_MAINTAINER_pn-lzo = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-lzo = "not done"
-RECIPE_LATEST_VERSION_pn-lzo = "2.03"
-RECIPE_PATCH_pn-lzo+autofoo = "minor configure.ac fix"
-RECIPE_PATCH_pn-lzo+acinclude.m4 = "lzo specific m4 macros"
+RECIPE_LATEST_VERSION_pn-lzo = "2.04"
 RECIPE_INTEL_SECTION_pn-lzo = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-lzo = "30 months"
-RECIPE_LATEST_RELEASE_DATE_pn-lzo = "04/2008"
-RECIPE_COMMENTS_pn-lzo = ""
+RECIPE_LATEST_RELEASE_DATE_pn-lzo = "10/2010"
 
 RECIPE_STATUS_pn-libtasn1 = "green"
 RECIPE_LAST_UPDATE_pn-libtasn1 = "Nov 16, 2010"
@@ -473,65 +451,32 @@ RECIPE_COMMENTS_pn-libtasn1 = ""
 RECIPE_STATUS_pn-openssl = "green"
 RECIPE_LAST_UPDATE_pn-openssl = "Nov 17, 2010"
 RECIPE_MAINTAINER_pn-openssl = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-openssl = "not done"
-RECIPE_LATEST_VERSION_pn-openssl = "1.0.0a"
+RECIPE_LATEST_VERSION_pn-openssl = "1.0.0c"
 RECIPE_NO_UPDATE_REASON_pn-openssl = "compatibility and stability concerns on new major release"
-RECIPE_PATCH_pn-openssl+debian-ca = "unknown"
-RECIPE_PATCH_pn-openssl+debian-debian-targets = "unknown"
-RECIPE_PATCH_pn-openssl+debian-engines-path = "unknown"
-RECIPE_PATCH_pn-openssl+debian-make-targets = "unknown"
-RECIPE_PATCH_pn-openssl+debian-man-dir = "unknown"
-RECIPE_PATCH_pn-openssl+debian-man-section = "unknown"
-RECIPE_PATCH_pn-openssl+debian-no-rpath = "unknown"
-RECIPE_PATCH_pn-openssl+debian-no-symbolic = "unknown"
-RECIPE_PATCH_pn-openssl+debian-pic = "PIC code generation fix for perl based asm"
-RECIPE_PATCH_pn-openssl+debian-pkg-config = "unknown"
-RECIPE_PATCH_pn-openssl+debian-valgrind = "fix valgrind errors"
-RECIPE_PATCH_pn-openssl+debian-rc4-amd64 = "unknown"
-RECIPE_PATCH_pn-openssl+debian-rehash-crt = "unknown"
-RECIPE_PATCH_pn-openssl+debian-rehash_pod = "unknown"
-RECIPE_PATCH_pn-openssl+debian-shared-lib-ext = "add shared library extension in Configure"
-RECIPE_PATCH_pn-openssl+debian-stddef = "add missing header"
-RECIPE_PATCH_pn-openssl+debian-version-script = "add 0.9.8 version info into shared library"
-RECIPE_PATCH_pn-openssl+debian-perl-path = "fix shebang lines of many perl scripts"
-RECIPE_PATCH_pn-openssl+configure-targets = "add poky target to Configure (not autoconf based)"
-RECIPE_PATCH_pn-openssl+shared-libs = "use make -e to export poky environment to child makefiles"
 RECIPE_INTEL_SECTION_pn-openssl = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-openssl = "3 months"
-RECIPE_LATEST_RELEASE_DATE_pn-openssl = "06/2010"
-RECIPE_COMMENTS_pn-openssl = "0.9.8o is actually used for stability concerns"
+RECIPE_LATEST_RELEASE_DATE_pn-openssl = "12/2010"
 
 RECIPE_STATUS_pn-libnss-mdns = "green"
 DISTRO_PN_ALIAS_pn-libnss-mdns = "Meego=nss-mdns OpenSuSE=nss-mdns Ubuntu=nss-mdns Mandriva=nss_mdns Debian=nss-mdns"
 RECIPE_LAST_UPDATE_pn-libnss-mdns = "Jul 8, 2010"
 RECIPE_MAINTAINER_pn-libnss-mdns = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-libnss-mdns = "done"
 RECIPE_LATEST_VERSION_pn-libnss-mdns = "0.10"
-RECIPE_PATCH_pn-libnss-mdns+alignment-fix = "fix alignment"
 RECIPE_INTEL_SECTION_pn-libnss-mdns = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libnss-mdns = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-libnss-mdns = "05/2007"
-RECIPE_COMMENTS_pn-libnss-mdns = ""
 
-RECIPE_STATUS_pn-ncurses = "red"   # need upgrade
-RECIPE_LAST_UPDATE_pn-ncurses = "Jul 21, 2006"
+RECIPE_STATUS_pn-ncurses = "green"
+RECIPE_LAST_UPDATE_pn-ncurses = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-ncurses = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-ncurses = "not done"
 RECIPE_LATEST_VERSION_pn-ncurses = "5.7"
 RECIPE_INTEL_SECTION_pn-ncurses = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-ncurses = "23 months"
 RECIPE_LATEST_RELEASE_DATE_pn-ncurses = "11/2008"
-RECIPE_COMMENTS_pn-ncurses = ""
 
 RECIPE_STATUS_pn-popt = "green"
 RECIPE_LAST_UPDATE_pn-popt = "Jul 5, 2010"
 RECIPE_MAINTAINER_pn-popt = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-popt = "done"
 RECIPE_LATEST_VERSION_pn-popt = "1.16"
 RECIPE_INTEL_SECTION_pn-popt = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-popt = "13 months"
 RECIPE_LATEST_RELEASE_DATE_pn-popt = "05/2010"
-RECIPE_COMMENTS_pn-popt = ""
 
 RECIPE_STATUS_pn-sqlite3 = "green"   # need upgrade
 RECIPE_LAST_UPDATE_pn-sqlite3 = "Nov 24, 2010"
@@ -556,17 +501,9 @@ RECIPE_COMMENTS_pn-libpthread-stubs = "0.1: 11/2006, 0.2: 09/2009, 0.3: 10/2009"
 RECIPE_STATUS_pn-attr = "yellow"   # the recipe is quite hacky
 RECIPE_LAST_UPDATE_pn-attr = "Jul 7, 2010"
 RECIPE_MAINTAINER_pn-attr = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-attr = "done"
 RECIPE_LATEST_VERSION_pn-attr = "2.4.44"
-RECIPE_PATCH_pn-attr+double-free = ""
-RECIPE_PATCH_pn-attr+memory-leak2 = ""
-RECIPE_PATCH_pn-attr+memory-leak-in-copy = ""
-RECIPE_PATCH_pn-attr+pull-in-string.h = ""
-RECIPE_PATCH_pn-attr+thinko-in-restore = "stdin mishandling"
 RECIPE_INTEL_SECTION_pn-attr = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-attr = "13 months"
 RECIPE_LATEST_RELEASE_DATE_pn-attr = "08/2009"
-RECIPE_COMMENTS_pn-attr = ""
 
 RECIPE_STATUS_pn-libcap = "yellow"   # hand crafted Makefiles
 RECIPE_LAST_UPDATE_pn-libcap = "Jul 7, 2010"
@@ -581,12 +518,10 @@ RECIPE_COMMENTS_pn-libcap = ""
 RECIPE_STATUS_pn-libevent = "green"
 RECIPE_LAST_UPDATE_pn-libevent = "Jul 7, 2010"
 RECIPE_MAINTAINER_pn-libevent = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-libevent = "done"
+RECIPE_NO_UPDATE_REASON_pn-libevent="libevent 2 is incompatible"
 RECIPE_LATEST_VERSION_pn-libevent = "1.4.14b"
 RECIPE_INTEL_SECTION_pn-libevent = "base libs"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-libevent = "7 months"
 RECIPE_LATEST_RELEASE_DATE_pn-libevent = "06/2010"
-RECIPE_COMMENTS_pn-libevent = ""
 
 RECIPE_STATUS_pn-libnfsidmap = "green"
 RECIPE_LAST_UPDATE_pn-libnfsidmap = "Jul 7, 2010"
@@ -1198,6 +1133,7 @@ RECIPE_STATUS_pn-apt = "red"
 RECIPE_LATEST_VERSION_pn-apt = "0.7.25.3"
 RECIPE_LAST_UPDATE_pn-apt = "Jun 19, 2008"
 RECIPE_MAINTAINER_pn-apt = "Qing He <qing.he@intel.com>"
+RECIPE_NO_UPDATE_REASON_pn-apt="similar to zypper, defer the upgrading"
 
 RECIPE_STATUS_pn-chrpath = "red"
 RECIPE_LATEST_VERSION_pn-chrpath = "0.13-2"
@@ -1395,13 +1331,10 @@ however debian portmap package licenses RPC code under 3-clause BSD. This needs
 RECIPE_STATUS_pn-grub = "green"
 RECIPE_LAST_UPDATE_pn-grub = "Oct 8, 2008"
 RECIPE_MAINTAINER_pn-grub = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-grub = "not done"
+RECIPE_NO_UPDATE_REASON_pn-grub="grub2 is a different thing"
 RECIPE_LATEST_VERSION_pn-grub = "0.97"
-RECIPE_PATCH_pn-grub+autohell = "fix configure"
 RECIPE_INTEL_SECTION_pn-grub = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-grub = "n/a"
 RECIPE_LATEST_RELEASE_DATE_pn-grub = "12/2005"
-RECIPE_COMMENTS_pn-grub = ""
 
 RECIPE_STATUS_pn-update-rc.d = "green"
 RECIPE_LAST_UPDATE_pn-update-rc.d = "Jul 21, 2006"
@@ -1697,11 +1630,9 @@ RECIPE_COMMENTS_pn-strace = "3-clause BSD"
 RECIPE_STATUS_pn-dhcp = "green"
 RECIPE_LAST_UPDATE_pn-dhcp = "Nov 17, 2010"
 RECIPE_MAINTAINER_pn-dhcp = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-dhcp = "not done"
-RECIPE_LATEST_VERSION_pn-dhcp = "4.1.1-P1"
+RECIPE_LATEST_VERSION_pn-dhcp = "4.2.0-P2"
 RECIPE_INTEL_SECTION_pn-dhcp = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-dhcp = "n/a"
-RECIPE_LATEST_RELEASE_DATE_pn-dhcp = "06/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-dhcp = "12/2010"
 RECIPE_COMMENTS_pn-dhcp = "several major release, others are 3.1.3, 4.0.2-P1, need to identify"
 
 RECIPE_STATUS_pn-v86d = "yellow"   # self written configure
@@ -1760,22 +1691,16 @@ RECIPE_COMMENTS_pn-rpm = "the library alone is under dual license"
 RECIPE_STATUS_pn-shared-mime-info = "green"
 RECIPE_LAST_UPDATE_pn-shared-mime-info = "Nov 9, 2010"
 RECIPE_MAINTAINER_pn-shared-mime-info = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-shared-mime-info = "not done"
-RECIPE_LATEST_VERSION_pn-shared-mime-info = "0.71"
+RECIPE_LATEST_VERSION_pn-shared-mime-info = "0.90"
 RECIPE_INTEL_SECTION_pn-shared-mime-info = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-shared-mime-info = "5 months"
 RECIPE_LATEST_RELEASE_DATE_pn-shared-mime-info = "02/2010"
-RECIPE_COMMENTS_pn-shared-mime-info = ""
 
 RECIPE_STATUS_pn-util-linux = "green"
 RECIPE_LAST_UPDATE_pn-util-linux = "Jul 21, 2010"
 RECIPE_MAINTAINER_pn-util-linux = "Qing He <qing.he@intel.com>"
-RECIPE_DEPENDENCY_CHECK_pn-util-linux = "note done"
-RECIPE_LATEST_VERSION_pn-util-linux = "2.17.2"
+RECIPE_LATEST_VERSION_pn-util-linux = "2.18"
 RECIPE_INTEL_SECTION_pn-util-linux = "base utils"
-RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-util-linux = "2 months"
-RECIPE_LATEST_RELEASE_DATE_pn-util-linux = "03/2010"
-RECIPE_COMMENTS_pn-util-linux = ""
+RECIPE_LATEST_RELEASE_DATE_pn-util-linux = "06/2010"
 
 RECIPE_STATUS_pn-usbutils = "green"
 RECIPE_LAST_UPDATE_pn-usbutils = "Jul 30, 2010"
@@ -1820,7 +1745,7 @@ RECIPE_LATEST_VERSION_pn-zypper = "git"
 RECIPE_INTEL_SECTION_pn-zypper = "base utils"
 RECIPE_COMMENTS_pn-zypper = ""
 
-RECIPE_STATUS_pn-sysstat = "red"    # need upgrade
+RECIPE_STATUS_pn-sysstat = "green"
 RECIPE_LAST_UPDATE_pn-sysstat = "Nov 17, 2010"
 RECIPE_MAINTAINER_pn-sysstat = "Qing He <qing.he@intel.com>"
 RECIPE_LATEST_VERSION_pn-sysstat = "9.1.6"
@@ -1875,9 +1800,9 @@ RECIPE_LATEST_VERSION_pn-aspell = "0.60.6"
 RECIPE_LAST_UPDATE_pn-aspell = "Aug 16, 2010"
 RECIPE_MAINTAINER_pn-aspell = "Qing He <qing.he@intel.com>"
 
-RECIPE_STATUS_pn-parted = "red"
+RECIPE_STATUS_pn-parted = "green"
 RECIPE_LATEST_VERSION_pn-parted = "2.3"
-RECIPE_LAST_UPDATE_pn-parted = "Feb 2, 2010"
+RECIPE_LAST_UPDATE_pn-parted = "Dec 30, 2010"
 RECIPE_MAINTAINER_pn-parted = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-resolvconf = "red"
@@ -1892,6 +1817,7 @@ RECIPE_MAINTAINER_pn-openswan = "Qing He <qing.he@intel.com>"
 
 RECIPE_STATUS_pn-u-boot-mkimage = "red"
 DISTRO_PN_ALIAS_pn-u-boot-mkimage = "Ubuntu=uboot-mkimage Debian=uboot-mkimage"
+RECIPE_NO_UPDATE_REASON_pn-u-boot-mkimage ="target version is not used"
 RECIPE_LATEST_VERSION_pn-u-boot-mkimage = "2010.03"
 RECIPE_LAST_UPDATE_pn-u-boot-mkimage = "Dec 15, 2009"
 RECIPE_MAINTAINER_pn-u-boot-mkimage = "Qing He <qing.he@intel.com>"
-- 
1.7.0


