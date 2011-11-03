Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA83AE00309
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960395"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:24 -0700
Message-Id: <da22a78bd424654e56c9201ec796294ac85ede50.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 12/17] zaurusd: fix a typo in Makefile
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:33 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

(From OE-Core rev: fcc7800834fda37df5a5c2bbd1da712ec8ff12b9)

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-bsp/zaurusd/zaurusd/fix_makefile.patch |   19 +++++++++++++++++++
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    5 +++--
 2 files changed, 22 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-bsp/zaurusd/zaurusd/fix_makefile.patch

diff --git a/meta/recipes-bsp/zaurusd/zaurusd/fix_makefile.patch b/meta/recipes-bsp/zaurusd/zaurusd/fix_makefile.patch
new file mode 100644
index 0000000..9b28202
--- /dev/null
+++ b/meta/recipes-bsp/zaurusd/zaurusd/fix_makefile.patch
@@ -0,0 +1,19 @@
+Upstream-Status: Pending
+
+Nitin A Kamble <nitin.a.kamble@intel.com> 2011/05/10
+Fix following build error:
+
+| Makefile:716: *** missing separator (did you mean TAB instead of 8 spaces?).  Stop.
+| ERROR: oe_runmake failed
+
+Index: zaurusd/Makefile.am
+===================================================================
+--- zaurusd.orig/Makefile.am
++++ zaurusd/Makefile.am
+@@ -4,5 +4,5 @@ SUBDIRS = apps config scripts
+ MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp install-sh ltmain.sh Makefile.in missing
+ 
+ snapshot:
+-        $(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
++	$(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
+ 
diff --git a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
index 455a29f..556d158 100644
--- a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
+++ b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
@@ -5,9 +5,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 DEPENDS = "tslib"
 RDEPENDS_${PN} = "xrandr"
 PV = "0.0+svnr${SRCPV}"
-PR = "r2"
+PR = "r3"
 
-SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=zaurusd;proto=http"
+SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=zaurusd;proto=http \
+	file://fix_makefile.patch"
 
 S = "${WORKDIR}/${PN}"
 
-- 
1.7.7


