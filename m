Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE9BE4C800AA
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 12:27:15 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2011 10:27:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,411,1291622400"; d="scan'208";a="653376869"
Received: from nbuild1.sc.intel.com (HELO localhost) ([172.25.110.36])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2011 10:27:15 -0800
Message-Id: <3195acbbcaacdb719f134ef814c8fbe8d669a819.1296560850.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296560850.git.nitin.a.kamble@intel.com>
References: <cover.1296560850.git.nitin.a.kamble@intel.com>
Old-Date: Mon, 24 Jan 2011 20:35:24 -0800
Date: Tue, 01 Feb 2011  3:57:22 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 3/4] mklibs-native: new recipe for optimizing size of library files
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
X-List-Received-Date: Tue, 01 Feb 2011 18:27:16 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../mklibs/files/ac_init_fix.patch                 |   17 ++++++++++++++
 .../mklibs/mklibs-native_0.1.31.bb                 |   23 ++++++++++++++++++++
 2 files changed, 40 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/mklibs/files/ac_init_fix.patch
 create mode 100644 meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb

diff --git a/meta/recipes-devtools/mklibs/files/ac_init_fix.patch b/meta/recipes-devtools/mklibs/files/ac_init_fix.patch
new file mode 100644
index 0000000..7325931
--- /dev/null
+++ b/meta/recipes-devtools/mklibs/files/ac_init_fix.patch
@@ -0,0 +1,17 @@
+Get the version of mklibs by simpler means. The MKLIBS_VERSION string in the 
+configure.ac file is replaced with real version string by the 
+do_configure_prepend() function from the recipe .bb file.
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/24
+
+Index: mklibs/configure.ac
+===================================================================
+--- mklibs.orig/configure.ac	2010-02-21 17:34:56.000000000 -0800
++++ mklibs/configure.ac	2011-01-24 18:52:19.943242079 -0800
+@@ -1,4 +1,4 @@
+-AC_INIT([mklibs],m4_esyscmd(dpkg-parsechangelog | perl -ne 'print $1 if m/^Version: (.*)$/;'))
++AC_INIT([mklibs], MKLIBS_VERSION)
+ AM_INIT_AUTOMAKE([foreign no-define])
+ AC_CONFIG_HEADERS([config.h])
+ AM_MAINTAINER_MODE
diff --git a/meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb b/meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb
new file mode 100644
index 0000000..2044d12
--- /dev/null
+++ b/meta/recipes-devtools/mklibs/mklibs-native_0.1.31.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "mklibs produces cut-down shared libraries that contain only the routines required by a particular set of executables."
+HOMEPAGE = "https://code.launchpad.net/mklibs"
+SECTION = "devel"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://debian/copyright;md5=98d31037b13d896e33890738ef01af64"
+DEPENDS = "python-native"
+
+PR = "r0"
+
+SRC_URI = "http://ftp.de.debian.org/debian/pool/main/m/mklibs/${BPN}_${PV}.tar.gz \
+	file://ac_init_fix.patch\
+"
+
+SRC_URI[md5sum] = "f4df0307ccbdf60070e42277513f27ed"
+SRC_URI[sha256sum] = "8f5595621eb09d52871c771861e81b032d10c31d15e5dd61fa7f5a9e5b7de405"
+
+S = "${WORKDIR}/${BPN}"
+
+inherit autotools gettext native
+
+do_configure_prepend() {
+	sed "s+MKLIBS_VERSION+${PV}+" ${S}/configure.ac
+}
-- 
1.7.2.2


