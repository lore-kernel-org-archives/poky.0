Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2F99E00308
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960394"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:23 -0700
Message-Id: <0a69e60cfc060472c19de2b50fd1bb4235be94c6.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 11/17] matchbox-wm-2: fix typo in Makefile
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

(From OE-Core rev: a708c42065eeeaabf97b97b530f63e4ef484bcf7)

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../matchbox-wm-2/matchbox-wm-2/fix_makefile.patch |   19 +++++++++++++++++++
 .../matchbox-wm-2/matchbox-wm-2_svn.bb             |    3 ++-
 2 files changed, 21 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2/fix_makefile.patch

diff --git a/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2/fix_makefile.patch b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2/fix_makefile.patch
new file mode 100644
index 0000000..8c40e85
--- /dev/null
+++ b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2/fix_makefile.patch
@@ -0,0 +1,19 @@
+Upstream-Status: Pending
+
+Nitin A Kamble <nitin.a.kamble@intel.com> 2011/05/10
+Fix following build error:
+| Makefile:734: *** missing separator (did you mean TAB instead of 8 spaces?).  Stop.
+| ERROR: oe_runmake failed
+
+Index: matchbox-window-manager-2/Makefile.am
+===================================================================
+--- matchbox-window-manager-2.orig/Makefile.am
++++ matchbox-window-manager-2/Makefile.am
+@@ -3,6 +3,6 @@ SUBDIRS = matchbox data doc util
+ # Extra clean files so that maintainer-clean removes *everything*
+ 
+ snapshot:
+-        $(MAKE) dist distdir=$(PACKAGE)-snapshot-`date +"%Y%m%d"`
++	$(MAKE) dist distdir=$(PACKAGE)-snapshot-`date +"%Y%m%d"`
+ 
+ MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp install-sh ltmain.sh Makefile.in missing
diff --git a/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
index 2eb12e1..786406d 100644
--- a/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
+++ b/meta/recipes-graphics/matchbox-wm-2/matchbox-wm-2_svn.bb
@@ -6,9 +6,10 @@ LIC_FILES_CHKSUM = "file://matchbox/core/mb-wm.h;endline=21;md5=1b1d328a52790635
 DEPENDS = "virtual/libx11 libxext libxrender startup-notification expat gconf pango libxdamage libxcomposite gtk+"
 
 PV = "0.0+svnr${SRCPV}"
-PR = "r4"
+PR = "r5"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=matchbox-window-manager-2;proto=http \
+	file://fix_makefile.patch \
 	  "
 
 S = "${WORKDIR}/matchbox-window-manager-2"
-- 
1.7.7


