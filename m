Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 183B34C811DA
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2010 08:28:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="868560496"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 08:28:20 -0800
Message-Id: <261ca885962ba9606bcad4c5415927a79fdd7b96.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/14] busybox: import upstream patch for make 3.82
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
Date: Wed, 15 Dec 2010 16:28:21 -0000
X-Original-Date: Tue, 9 Nov 2010 12:18:14 +0000
X-List-Received-Date: Wed, 15 Dec 2010 16:28:21 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../busybox/busybox-1.16.2/make-382-fix.patch      |   25 ++++++++++++++++++++
 meta/recipes-core/busybox/busybox_1.16.2.bb        |    3 +-
 2 files changed, 27 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch

diff --git a/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch b/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch
new file mode 100644
index 0000000..4ef125d
--- /dev/null
+++ b/meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch
@@ -0,0 +1,25 @@
+From ef6c6d8cfef071435ccf275ad404a501626b706c Mon Sep 17 00:00:00 2001
+From: Thomas Chou <thomas@wytron.com.tw>
+Date: Tue, 19 Oct 2010 07:17:12 +0000
+Subject: mkmakefile: make 3.82 fix
+
+Signed-off-by: Thomas Chou <thomas@wytron.com.tw>
+Signed-off-by: Denys Vlasenko <dvlasenk@redhat.com>
+---
+diff --git a/scripts/mkmakefile b/scripts/mkmakefile
+index 7f9d544..9fc51a7 100755
+--- a/scripts/mkmakefile
++++ b/scripts/mkmakefile
+@@ -31,6 +31,9 @@ all:
+ 
+ Makefile:;
+ 
+-\$(filter-out all Makefile,\$(MAKECMDGOALS)) %/:
++\$(filter-out all Makefile,\$(MAKECMDGOALS)):
++	\$(MAKE) -C \$(KERNELSRC) O=\$(KERNELOUTPUT) \$@
++
++%/:
+ 	\$(MAKE) -C \$(KERNELSRC) O=\$(KERNELOUTPUT) \$@
+ EOF
+--
+cgit v0.8.2.1
diff --git a/meta/recipes-core/busybox/busybox_1.16.2.bb b/meta/recipes-core/busybox/busybox_1.16.2.bb
index 0952f4d..06fef62 100644
--- a/meta/recipes-core/busybox/busybox_1.16.2.bb
+++ b/meta/recipes-core/busybox/busybox_1.16.2.bb
@@ -1,5 +1,5 @@
 require busybox.inc
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://udhcpscript.patch \
@@ -8,6 +8,7 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://get_header_tar.patch \
            file://busybox-appletlib-dependency.patch \
            file://run-parts.in.usr-bin.patch \
+           file://make-382-fix.patch \
            file://find-touchscreen.sh \
            file://busybox-cron \
            file://busybox-httpd \
-- 
1.7.3.3


