Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5ABEE4C811E4
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:51 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2010 08:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="868560529"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 08:28:27 -0800
Message-Id: <30c39cc97c384134661300e107d7a81f257f8034.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/14] procps: fix for build against make 3.82
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
Date: Wed, 15 Dec 2010 16:28:51 -0000
X-Original-Date: Fri, 12 Nov 2010 16:36:54 +0000
X-List-Received-Date: Wed, 15 Dec 2010 16:28:51 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../procps-3.2.7/procps-3.2.8+gmake-3.82.patch     |   17 +++++++++++++++++
 meta/recipes-extended/procps/procps_3.2.7.bb       |    3 ++-
 2 files changed, 19 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-extended/procps/procps-3.2.7/procps-3.2.8+gmake-3.82.patch

diff --git a/meta/recipes-extended/procps/procps-3.2.7/procps-3.2.8+gmake-3.82.patch b/meta/recipes-extended/procps/procps-3.2.7/procps-3.2.8+gmake-3.82.patch
new file mode 100644
index 0000000..23310e0
--- /dev/null
+++ b/meta/recipes-extended/procps/procps-3.2.7/procps-3.2.8+gmake-3.82.patch
@@ -0,0 +1,17 @@
+Fix for stricter Makefile parser in Make 3.82 take from Gentoo bugzilla:
+http://sources.gentoo.org/cgi-bin/viewvc.cgi/gentoo-x86/sys-process/procps/files/procps-3.2.8%2Bgmake-3.82.patch?revision=1.1
+
+Index: procps-3.2.8/Makefile
+===================================================================
+--- procps-3.2.8.orig/Makefile
++++ procps-3.2.8/Makefile
+@@ -174,7 +174,8 @@ INSTALL := $(BINFILES) $(MANFILES)
+ # want this rule first, use := on ALL, and ALL not filled in yet
+ all: do_all
+ 
+--include */module.mk
++-include proc/module.mk
++-include ps/module.mk
+ 
+ do_all:    $(ALL)
+ 
diff --git a/meta/recipes-extended/procps/procps_3.2.7.bb b/meta/recipes-extended/procps/procps_3.2.7.bb
index b795c2b..4703525 100644
--- a/meta/recipes-extended/procps/procps_3.2.7.bb
+++ b/meta/recipes-extended/procps/procps_3.2.7.bb
@@ -1,6 +1,6 @@
 require procps.inc
 
-PR = "r9"
+PR = "r10"
 
 inherit update-rc.d update-alternatives
 
@@ -16,6 +16,7 @@ SRC_URI += "file://procmodule.patch;patch=1 \
 	    file://linux-limits.patch;patch=1 \
 	    file://sysctl.conf \
 	    file://procps.init \
+	    file://procps-3.2.8+gmake-3.82.patch \
 	    "
 
 FILES = "${bindir}/top.${PN} ${base_bindir}/ps.${PN} ${bindir}/uptime.${PN} ${base_bindir}/kill.${PN} \
-- 
1.7.3.3


