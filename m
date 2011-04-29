Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB94D4C80FBE
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:43:28 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2011 02:43:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="740127560"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QFk6t-0000Fi-H5; Fri, 29 Apr 2011 17:35:39 +0800
Message-Id: <8e1abcc657f1e1a5d7a45fe61eb2fa83523bbaf6.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
Old-Date: Mon, 25 Apr 2011 14:06:48 +0800
Date: Fri, 29 Apr 2011 17:35:39 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 05/10] busybox: upgrade to version 1.18.4
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
X-List-Received-Date: Fri, 29 Apr 2011 09:43:29 -0000

From: Qing He <qing.he@intel.com>

from version 1.17.3
 - remove make-382-fix since it's upstreamed

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../busybox/busybox-1.17.3/make-382-fix.patch      |   25 --------------------
 .../B921600.patch                                  |    0
 .../busybox-appletlib-dependency.patch             |    0
 .../busybox-udhcpc-no_deconfig.patch               |   19 ++++++++++----
 .../{busybox-1.17.3 => busybox-1.18.4}/defconfig   |    0
 .../get_header_tar.patch                           |    4 +-
 .../run-parts.in.usr-bin.patch                     |    0
 .../udhcpc-fix-nfsroot.patch                       |    0
 .../udhcpscript.patch                              |    0
 .../{busybox_1.17.3.bb => busybox_1.18.4.bb}       |    7 ++---
 10 files changed, 18 insertions(+), 37 deletions(-)
 delete mode 100644 meta/recipes-core/busybox/busybox-1.17.3/make-382-fix.patch
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/B921600.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/busybox-appletlib-dependency.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/busybox-udhcpc-no_deconfig.patch (90%)
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/defconfig (100%)
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/get_header_tar.patch (76%)
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/run-parts.in.usr-bin.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/udhcpc-fix-nfsroot.patch (100%)
 rename meta/recipes-core/busybox/{busybox-1.17.3 => busybox-1.18.4}/udhcpscript.patch (100%)
 rename meta/recipes-core/busybox/{busybox_1.17.3.bb => busybox_1.18.4.bb} (81%)

diff --git a/meta/recipes-core/busybox/busybox-1.17.3/make-382-fix.patch b/meta/recipes-core/busybox/busybox-1.17.3/make-382-fix.patch
deleted file mode 100644
index 4ef125d..0000000
--- a/meta/recipes-core/busybox/busybox-1.17.3/make-382-fix.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-From ef6c6d8cfef071435ccf275ad404a501626b706c Mon Sep 17 00:00:00 2001
-From: Thomas Chou <thomas@wytron.com.tw>
-Date: Tue, 19 Oct 2010 07:17:12 +0000
-Subject: mkmakefile: make 3.82 fix
-
-Signed-off-by: Thomas Chou <thomas@wytron.com.tw>
-Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
----
-diff --git a/scripts/mkmakefile b/scripts/mkmakefile
-index 7f9d544..9fc51a7 100755
---- a/scripts/mkmakefile
-+++ b/scripts/mkmakefile
-@@ -31,6 +31,9 @@ all:
- 
- Makefile:;
- 
--\$(filter-out all Makefile,\$(MAKECMDGOALS)) %/:
-+\$(filter-out all Makefile,\$(MAKECMDGOALS)):
-+	\$(MAKE) -C \$(KERNELSRC) O=\$(KERNELOUTPUT) \$@
-+
-+%/:
- 	\$(MAKE) -C \$(KERNELSRC) O=\$(KERNELOUTPUT) \$@
- EOF
---
-cgit v0.8.2.1
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/B921600.patch b/meta/recipes-core/busybox/busybox-1.18.4/B921600.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.17.3/B921600.patch
rename to meta/recipes-core/busybox/busybox-1.18.4/B921600.patch
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/busybox-appletlib-dependency.patch b/meta/recipes-core/busybox/busybox-1.18.4/busybox-appletlib-dependency.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.17.3/busybox-appletlib-dependency.patch
rename to meta/recipes-core/busybox/busybox-1.18.4/busybox-appletlib-dependency.patch
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch b/meta/recipes-core/busybox/busybox-1.18.4/busybox-udhcpc-no_deconfig.patch
similarity index 90%
rename from meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch
rename to meta/recipes-core/busybox/busybox-1.18.4/busybox-udhcpc-no_deconfig.patch
index cdf56b8..405d482 100644
--- a/meta/recipes-core/busybox/busybox-1.17.3/busybox-udhcpc-no_deconfig.patch
+++ b/meta/recipes-core/busybox/busybox-1.18.4/busybox-udhcpc-no_deconfig.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Add a new option -D to the udhcpc client that allows for
 dhcp renewal to occur without having to down the interface
 in the process.
@@ -8,6 +10,11 @@ Updated to latest Busybox 1.17.3
 
 Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
 
+Updated to Busybox 1.18.4
+option spec is changed
+
+Signed-off-by: Qing He <qing.he@intel.com>
+
 diff -ur busybox-1.17.3.orig/networking/udhcp/dhcpc.c busybox-1.17.3/networking/udhcp/dhcpc.c
 --- busybox-1.17.3.orig/networking/udhcp/dhcpc.c
 +++ busybox-1.17.3/networking/udhcp/dhcpc.c
@@ -42,10 +49,10 @@ diff -ur busybox-1.17.3.orig/networking/udhcp/dhcpc.c busybox-1.17.3/networking/
  	bb_info_msg("Entering released state");
  
 @@ -836,6 +841,7 @@
- 		OPT_o = 1 << 18,
- 		OPT_x = 1 << 19,
- 		OPT_f = 1 << 20,
-+		OPT_D = 1 << 21,
+ 		OPT_o = 1 << 17,
+ 		OPT_x = 1 << 18,
+ 		OPT_f = 1 << 19,
++		OPT_D = 1 << 20,
  /* The rest has variable bit positions, need to be clever */
  		OPTBIT_f = 20,
  		USE_FOR_MMU(             OPTBIT_b,)
@@ -53,8 +60,8 @@ diff -ur busybox-1.17.3.orig/networking/udhcp/dhcpc.c busybox-1.17.3/networking/
  #endif
  		;
  	IF_LONG_OPTS(applet_long_options = udhcpc_longopts;)
--	opt = getopt32(argv, "c:CV:H:h:F:i:np:qRr:s:T:t:SA:O:ox:f"
-+	opt = getopt32(argv, "c:CV:H:h:F:i:np:qRr:s:T:t:SA:O:ox:fD"
+-	opt = getopt32(argv, "CV:H:h:F:i:np:qRr:s:T:t:SA:O:ox:f"
++	opt = getopt32(argv, "CV:H:h:F:i:np:qRr:s:T:t:SA:O:ox:fD"
  		USE_FOR_MMU("b")
  		IF_FEATURE_UDHCPC_ARPING("a")
  		IF_FEATURE_UDHCP_PORT("P:")
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/defconfig b/meta/recipes-core/busybox/busybox-1.18.4/defconfig
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.17.3/defconfig
rename to meta/recipes-core/busybox/busybox-1.18.4/defconfig
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/get_header_tar.patch b/meta/recipes-core/busybox/busybox-1.18.4/get_header_tar.patch
similarity index 76%
rename from meta/recipes-core/busybox/busybox-1.17.3/get_header_tar.patch
rename to meta/recipes-core/busybox/busybox-1.18.4/get_header_tar.patch
index bc9b427..c1f881f 100644
--- a/meta/recipes-core/busybox/busybox-1.17.3/get_header_tar.patch
+++ b/meta/recipes-core/busybox/busybox-1.18.4/get_header_tar.patch
@@ -7,8 +7,8 @@
 #
 # above comment added by Kevin Tian <kevin.tian@intel.com>, 2010-07-06
 
---- busybox-1.13.2/archival/libunarchive/get_header_tar.c.orig	2008-11-09 18:28:02.000000000 +0100
-+++ busybox-1.13.2/archival/libunarchive/get_header_tar.c	2009-02-11 22:34:52.000000000 +0100
+--- busybox-1.13.2/archival/libarchive/get_header_tar.c.orig	2008-11-09 18:28:02.000000000 +0100
++++ busybox-1.13.2/archival/libarchive/get_header_tar.c	2009-02-11 22:34:52.000000000 +0100
 @@ -252,6 +252,8 @@
  			file_header->name = concat_path_file(tar.prefix, tar.name);
  		} else
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/run-parts.in.usr-bin.patch b/meta/recipes-core/busybox/busybox-1.18.4/run-parts.in.usr-bin.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.17.3/run-parts.in.usr-bin.patch
rename to meta/recipes-core/busybox/busybox-1.18.4/run-parts.in.usr-bin.patch
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/udhcpc-fix-nfsroot.patch b/meta/recipes-core/busybox/busybox-1.18.4/udhcpc-fix-nfsroot.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.17.3/udhcpc-fix-nfsroot.patch
rename to meta/recipes-core/busybox/busybox-1.18.4/udhcpc-fix-nfsroot.patch
diff --git a/meta/recipes-core/busybox/busybox-1.17.3/udhcpscript.patch b/meta/recipes-core/busybox/busybox-1.18.4/udhcpscript.patch
similarity index 100%
rename from meta/recipes-core/busybox/busybox-1.17.3/udhcpscript.patch
rename to meta/recipes-core/busybox/busybox-1.18.4/udhcpscript.patch
diff --git a/meta/recipes-core/busybox/busybox_1.17.3.bb b/meta/recipes-core/busybox/busybox_1.18.4.bb
similarity index 81%
rename from meta/recipes-core/busybox/busybox_1.17.3.bb
rename to meta/recipes-core/busybox/busybox_1.18.4.bb
index 28342fe..696a4db 100644
--- a/meta/recipes-core/busybox/busybox_1.17.3.bb
+++ b/meta/recipes-core/busybox/busybox_1.18.4.bb
@@ -1,5 +1,5 @@
 require busybox.inc
-PR = "r2"
+PR = "r0"
 
 SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://udhcpscript.patch \
@@ -8,7 +8,6 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://get_header_tar.patch \
            file://busybox-appletlib-dependency.patch \
            file://run-parts.in.usr-bin.patch \
-           file://make-382-fix.patch \
            file://busybox-udhcpc-no_deconfig.patch \
            file://find-touchscreen.sh \
            file://busybox-cron \
@@ -24,7 +23,7 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://umount.busybox \
            file://defconfig"
 
-SRC_URI[tarball.md5sum] = "a2ce1a951571da8c6e0eaf75b1acef60"
-SRC_URI[tarball.sha256sum] = "de2f0274f61a068d75ad33861e0982e99c6b625681460ce420222371c3511ff2"
+SRC_URI[tarball.md5sum] = "b03c5b46ced732679e525a920a1a62f5"
+SRC_URI[tarball.sha256sum] = "4d24d37bd6f1bd153e8cf9a984ec2f32f18464f73ca535e2cc2e8be9694097fa"
 
 EXTRA_OEMAKE += "V=1 ARCH=${TARGET_ARCH} CROSS_COMPILE=${TARGET_PREFIX}"
-- 
1.7.0


