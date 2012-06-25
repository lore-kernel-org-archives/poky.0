Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F23AE006D9
	for <poky@yoctoproject.org>; Mon, 25 Jun 2012 10:07:29 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 25 Jun 2012 10:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115827477"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.12.180])
	by AZSMGA002.ch.intel.com with ESMTP; 25 Jun 2012 10:07:29 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 25 Jun 2012 10:07:18 -0700
Message-Id: <2a4a71ea68d07476349c04512ac29736607c7595.1340643949.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
In-Reply-To: <cover.1340643949.git.sgw@linux.intel.com>
References: <cover.1340643949.git.sgw@linux.intel.com>
Subject: [Consolidated Poky Pull 3/7] upstream_tracking: Update Upgraded and Manual Checked upstream
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
X-List-Received-Date: Mon, 25 Jun 2012 17:07:29 -0000

Remove VERSION and CHECK_DATE info for packages we can generate
the information for automagically.

Manually checked:
console-tools
sysfsutils
cracklib
less
psmisc
sysstat
glew
libmad
boost
libcheck
libcap
libexif
sqlite3

Upgraded:
sqlite3: Update to 3.7.13
psmisc: Update to 22.19
sysstat: Update to 10.0.5
util-linux: Update to 2.21.2
libxml2: Update to 2.8.0
mx: Upgrade to 1.4.6
libxml-simple-perl: Upgrade to 2.20
cracklib: Upgrade to 2.8.19
resolvconf: Upgrade to 1.67
libtasn1: Upgrade to 2.13
gnutls: Upgrade to 2.12.20
foomatic-filters: Upgrade to 4.0.16
libidn: Upgrade to 1.25
libtiff: Upgrade to 4.0.2

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../conf/distro/include/upstream_tracking.inc      |   61 +++++++++-----------
 1 files changed, 27 insertions(+), 34 deletions(-)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index 48fb9ed..fa46a5a 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -121,6 +121,8 @@ RECIPE_UPSTREAM_DATE_pn-connman-gnome="n/a"
 RECIPE_UPSTREAM_VERSION_pn-connman = "0.65"
 RECIPE_UPSTREAM_DATE_pn-connman="Dec 24, 2010"
 RECIPE_UPSTREAM_VERSION_pn-console-tools = "0.3.2"
+RECIPE_UPSTREAM_DATE_pn-console-tools = "Feb 18, 2002"
+CHECK_DATE_pn-console-tools = "Jun 22, 2012"
 RECIPE_UPSTREAM_VERSION_pn-consolekit = "0.4.3"
 RECIPE_UPSTREAM_VERSION_pn-contacts = "0.12+git0+19853893fdb595de6aa59db0d9dc2f9451ed2933"
 RECIPE_UPSTREAM_DATE_pn-contacts = "Nov 01, 2009"
@@ -129,9 +131,9 @@ RECIPE_UPSTREAM_VERSION_pn-coreutils = "8.12"
 RECIPE_UPSTREAM_DATE_pn-coreutils = "Apr 01, 2011"
 RECIPE_UPSTREAM_VERSION_pn-cpio = "2.11"
 RECIPE_UPSTREAM_DATE_pn-cpio = "Mar 01, 2010"
-RECIPE_UPSTREAM_VERSION_pn-cracklib="2.8.18"
-CHECK_DATE_pn-cracklib = "Apr 18, 2012"
-RECIPE_UPSTREAM_DATE_pn-cracklib = "Aug 29, 2010"
+RECIPE_UPSTREAM_VERSION_pn-cracklib="2.8.19"
+CHECK_DATE_pn-cracklib = "Jun 22, 2012"
+RECIPE_UPSTREAM_DATE_pn-cracklib = "May 18, 2010"
 RECIPE_UPSTREAM_VERSION_pn-createrepo = "0.9.9"
 RECIPE_NO_UPDATE_REASON_pn-createrepo = "Versions after 0.9.* use YUM, so we hold at 0.4.11"
 RECIPE_UPSTREAM_VERSION_pn-cronie = "1.4.8"
@@ -265,7 +267,7 @@ RECIPE_UPSTREAM_VERSION_pn-ghostscript = "9.05"
 CHECK_DATE_pn-ghostscript = "Mar 14, 2012"
 RECIPE_LATEST_VERIONS_pn-git = "1.7.3.4"
 RECIPE_UPSTREAM_VERSION_pn-glew = "1.7.0"
-CHECK_DATE_pn-glew = "Apr 18, 2012"
+CHECK_DATE_pn-glew = "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-glew = "Aug 26, 2011"
 RECIPE_UPSTREAM_DATE_pn-glib-2.0 = "Nov 11, 2011"
 RECIPE_UPSTREAM_VERSION_pn-glibc = "2.11.2"
@@ -277,8 +279,7 @@ RECIPE_UPSTREAM_VERSION_pn-gmp="5.0.4"
 CHECK_DATE_pn-gmp = "Mar 14, 2012"
 RECIPE_UPSTREAM_DATE_pn-gnome-vfs = "Sep 28, 2010"
 RECIPE_UPSTREAM_VERSION_pn-gnu-config="git"
-RECIPE_UPSTREAM_VERSION_pn-gnutls = "2.12.17"
-RECIPE_UPSTREAM_DATE_pn-gnutls = "Mar 02, 2012"
+RECIPE_UPSTREAM_DATE_pn-gnutls = "May 05, 2012"
 RECIPE_UPSTREAM_DATE_pn-gobject-introspection = "Mar 05, 2012"
 RECIPE_NO_UPDATE_REASON_pn-gobject_introspection = "Does not cross-compile"
 RECIPE_UPSTREAM_VERSION_pn-gperf = "3.0.4"
@@ -371,7 +372,7 @@ RECIPE_UPSTREAM_DATE_pn-latencytop = "Apr 28, 2009"
 RECIPE_UPSTREAM_VERSION_pn-leafpad = "0.8.18.1"
 RECIPE_UPSTREAM_DATE_pn-leafpad = "Dec 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-less = "444"
-CHECK_DATE_pn-less = "Apr 18, 2012"
+CHECK_DATE_pn-less = "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-less = "Jun 9, 2011"
 RECIPE_UPSTREAM_VERSION_pn-liba52="0.7.4"
 CHECK_DATE_pn-liba52 = "Jan 30, 2011"
@@ -389,10 +390,10 @@ CHECK_DATE_pn-libassuan = "Nov 22, 2011"
 RECIPE_UPSTREAM_DATE_pn-libatomics-ops = "unknown"
 RECIPE_UPSTREAM_VERSION_pn-libcanberra = "0.26"
 RECIPE_UPSTREAM_VERSION_pn-libcap = "2.22"
-CHECK_DATE_pn-libcap = "Apr 18, 2012"
+CHECK_DATE_pn-libcap = "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-libcap = "Jan 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-libcheck = "0.9.8"
-CHECK_DATE_pn-libcheck = "Apr 18, 2012"
+CHECK_DATE_pn-libcheck = "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-libcheck = "Sep 23, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libconvert-asn1-perl="0.22"
 RECIPE_UPSTREAM_VERSION_pn-libcroco = "0.6.3"
@@ -409,9 +410,9 @@ RECIPE_UPSTREAM_VERSION_pn-libetpan = "1.0"
 RECIPE_UPSTREAM_VERSION_pn-libevent = "2.0.16"
 CHECK_DATE_pn-libevent = "Jan 12, 2012"
 RECIPE_UPSTREAM_DATE_pn-libevent = "Nov 18, 2011"
-RECIPE_UPSTREAM_VERSION_pn-libexif = "0.6.20"
-CHECK_DATE_pn-libexif = "Apr 18, 2012"
 RECIPE_UPSTREAM_DATE_pn-libexif = "Dec 12, 2010"
+RECIPE_UPSTREAM_VERSION_pn-libexif = "0.6.20"
+CHECK_DATE_pn-libexif = "Jun 22, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libfakekey = "0.0+svnr2031"
 RECIPE_UPSTREAM_DATE_pn-libfakekey = "Jul 01, 2006"
 RECIPE_UPSTREAM_VERSION_pn-libffi  = "3.0.10"
@@ -454,14 +455,13 @@ RECIPE_UPSTREAM_DATE_pn-libiconv = "Aug 07, 2011"
 CHECK_DATE_pn-libiconv = "Nov 22, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libid3tag="0.15.1b"
 RECIPE_UPSTREAM_DATE_pn-libid3tag="Feb 18, 2004"
-RECIPE_UPSTREAM_VERSION_pn-libidn = "1.24"
-RECIPE_UPSTREAM_DATE_pn-libidn = "Jan 10, 2012"
+RECIPE_UPSTREAM_DATE_pn-libidn = "May 23, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libjson = "0.9"
 RECIPE_UPSTREAM_DATE_pn-libjson = "Jul 31, 2009"
 RECIPE_UPSTREAM_VERSION_pn-liblbxutil = "1.1.0"
 RECIPE_UPSTREAM_DATE_pn-liblbxutil = "Dec 4, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libmad = "0.15.1b"
-CHECK_DATE_pn-libmad = "Apr 18, 2012"
+CHECK_DATE_pn-libmad = "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-libmad = "Feb 18, 2004"
 RECIPE_UPSTREAM_VERSION_pn-libmatchbox = "1.9"
 RECIPE_UPSTREAM_DATE_pn-libmatchbox = "Aug 01, 2006"
@@ -521,9 +521,7 @@ RECIPE_UPSTREAM_DATE_pn-libsndfile1 = "Jul 13, 2011"
 RECIPE_UPSTREAM_DATE_pn-libsoup-2.4 = "Oct 18, 2011"
 RECIPE_UPSTREAM_VERSION_pn-libsoup = "2.2.105"
 RECIPE_UPSTREAM_VERSION_pn-libsyncml = "0.5.4"
-RECIPE_UPSTREAM_VERSION_pn-libtasn1 = "2.11"
-RECIPE_UPSTREAM_DATE_pn-libtasn1 = "Nov 24, 2011"
-CHECK_DATE_pn-libtasn1 = "Nov 29, 2011"
+RECIPE_UPSTREAM_DATE_pn-libtasn1 = "Mar 19, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libtelepathy = "0.3.3"
 RECIPE_NO_UPDATE_REASON_pn-libtheora = "1.1.1 is latest stable release not 1.2.0alpha1"
 RECIPE_UPSTREAM_VERSION_pn-libtheora = "1.2.0"
@@ -589,9 +587,7 @@ RECIPE_UPSTREAM_DATE_pn-libxkbfile = "Oct 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libxkbui = "1.0.2"
 RECIPE_UPSTREAM_VERSION_pn-libxklavier = "5.0"
 RECIPE_UPSTREAM_VERSION_pn-libxml-parser-perl="2.41"
-RECIPE_UPSTREAM_VERSION_pn-libxml2 = "2.7.8"
-RECIPE_UPSTREAM_DATE_pn-libxml2 = "Nov 04, 2010"
-CHECK_DATE_pn-libxml2 = "Nov 22, 2011"
+RECIPE_UPSTREAM_DATE_pn-libxml2 = "May 21, 2012"
 RECIPE_UPSTREAM_VERSION_pn-libxmu = "1.0.5"
 RECIPE_UPSTREAM_DATE_pn-libxmu = "Sep 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-libxp = "1.0.1"
@@ -700,7 +696,6 @@ RECIPE_UPSTREAM_DATE_pn-mtd-utils = "Dec 17, 2011"
 RECIPE_UPSTREAM_VERSION_pn-mtools = "4.0.17"
 RECIPE_UPSTREAM_DATE_pn-mtools = "Jun 28, 2011"
 RECIPE_UPSTREAM_VERSION_pn-mutter = "2.29.1_0.4"
-RECIPE_UPSTREAM_VERSION_pn-mx = "1.4.2"
 RECIPE_UPSTREAM_VERSION_pn-nasm="2.07"
 CHECK_DATE_pn-nasm = "Feb 01, 2012"
 RECIPE_UPSTREAM_VERSION_pn-ncurses = "5.9"
@@ -794,9 +789,9 @@ RECIPE_UPSTREAM_DATE_pn-printproto = "Jan 5, 2011"
 RECIPE_UPSTREAM_VERSION_pn-procps = "3.2.8"
 RECIPE_UPSTREAM_VERSION_pn-pseudo = "1.2"
 CHECK_DATE_pn-pseudo = "Nov 02, 2011"
-RECIPE_UPSTREAM_VERSION_pn-psmisc = "22.16"
-CHECK_DATE_pn-psmisc = "Apr 18, 2012"
-RECIPE_UPSTREAM_DATE_pn-psmisc = "Feb 25, 2012"
+RECIPE_UPSTREAM_VERSION_pn-psmisc = "22.19"
+CHECK_DATE_pn-psmisc = "Jun 22, 2012"
+RECIPE_UPSTREAM_DATE_pn-psmisc = "Jun 22, 2012"
 RECIPE_UPSTREAM_VERSION_pn-psplash = "0.0+svnr424"
 RECIPE_UPSTREAM_DATE_pn-psplash = "May 01, 2009"
 RECIPE_UPSTREAM_VERSION_pn-pth = "2.0.7"
@@ -834,9 +829,7 @@ RECIPE_UPSTREAM_VERSION_pn-recordproto = "1.14.2"
 RECIPE_UPSTREAM_DATE_pn-recordproto = "Mar 23, 2012"
 RECIPE_UPSTREAM_VERSION_pn-renderproto = "0.11.1"
 RECIPE_UPSTREAM_DATE_pn-renderproto = "Aug 10, 2010"
-RECIPE_UPSTREAM_VERSION_pn-resolvconf = "1.63"
-RECIPE_UPSTREAM_DATE_pn-resolvconf = "Dec 18, 2011"
-CHECK_DATE_pn-resolvconf = "Dec 28, 2011"
+RECIPE_UPSTREAM_DATE_pn-resolvconf = "Jun 19, 2012"
 RECIPE_UPSTREAM_VERSION_pn-resourceproto = "1.2.0"
 RECIPE_UPSTREAM_DATE_pn-resourceproto = "May 27, 2011"
 RECIPE_UPSTREAM_VERSION_pn-rpcbind = "0.2.0"
@@ -879,9 +872,9 @@ RECIPE_NO_UPDATE_REASON_pn-socat = "2.0.0 is beta"
 RECIPE_UPSTREAM_DATE_pn-socat = "Aug 07, 2011"
 RECIPE_UPSTREAM_VERSION_pn-speex="1.2rc1"
 RECIPE_UPSTREAM_DATE_pn-speex="Jul 24, 2008"
-RECIPE_UPSTREAM_VERSION_pn-sqlite3 = "3.7.11"
-CHECK_DATE_pn-sqlite3= "Apr 18, 2012"
-RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Mar 20, 2012"
+RECIPE_UPSTREAM_VERSION_pn-sqlite3 = "3.7.13"
+RECIPE_UPSTREAM_DATE_pn-sqlite3 = "Jun 11, 2012"
+CHECK_DATE_pn-sqlite3= "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-squashfs-tools = "Feb 28, 2011"
 RECIPE_UPSTREAM_DATE_pn-startup-notification = "May 16, 2011"
 RECIPE_UPSTREAM_VERSION_pn-stat = "3.3"
@@ -894,7 +887,7 @@ CHECK_DATE_pn-subversion = "Jan 25, 2011"
 RECIPE_UPSTREAM_VERSION_pn-sudo = "1.8.4p4"
 RECIPE_UPSTREAM_DATE_pn-sudo = "Mar 12, 2012"
 RECIPE_UPSTREAM_VERSION_pn-sysfsutils = "2.1.0"
-CHECK_DATE_pn-sysfsutils = "Apr 18, 2012"
+CHECK_DATE_pn-sysfsutils = "Jun 22, 2012"
 RECIPE_UPSTREAM_DATE_pn-sysfsutils = "Aug 23, 2006"
 RECIPE_UPSTREAM_VERSION_pn-sysklogd = "1.5"
 RECIPE_UPSTREAM_VERSION_pn-syslinux = "4.03"
@@ -903,9 +896,9 @@ RECIPE_NO_UPDATE_REASON_pn-syslinux="Waiting for 4.06 for 3.3 kernel headers sup
 RECIPE_UPSTREAM_VERSION_pn-sysprof = "1.1.6"
 RECIPE_UPSTREAM_VERSION_pn-sysprof = "6b5b8432711ef5c747f8375073cd9af88922d3c6"
 RECIPE_UPSTREAM_DATE_pn-sysprof = "Dec 01, 2010"
-RECIPE_UPSTREAM_VERSION_pn-sysstat = "10.0.4"
-CHECK_DATE_pn-sysstat = "Apr 18, 2012"
-RECIPE_UPSTREAM_DATE_pn-sysstat = "Mar 07, 2012"
+RECIPE_UPSTREAM_VERSION_pn-sysstat = "10.0.5"
+CHECK_DATE_pn-sysstat = "Jun 22, 2012"
+RECIPE_UPSTREAM_DATE_pn-sysstat = "May 16, 2012"
 RECIPE_UPSTREAM_VERSION_pn-sysvinit = "2.88dsf"
 RECIPE_UPSTREAM_DATE_pn-sysvinit = "Apr 01, 2010"
 RECIPE_UPSTREAM_VERSION_pn-table = "d42a44938699ee30a998fc42bc149aebf69389db"
-- 
1.7.7.6


