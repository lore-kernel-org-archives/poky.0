Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AD694C80A77
	for <poky@yoctoproject.org>; Wed, 11 May 2011 00:40:21 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 May 2011 22:40:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; 
   d="scan'208";a="734311"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 22:40:20 -0700
Message-Id: <b0e499be509b9e6f482f679b246cc92af1990947.1305092349.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305092348.git.nitin.a.kamble@intel.com>
References: <cover.1305092348.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 22:24:47 -0700
Date: Tue, 10 May 2011 22:40:20 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 4/5] zaurusd: fix a typo in Makefile
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
X-List-Received-Date: Wed, 11 May 2011 05:40:21 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
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
index 7313560..6f9ed03 100644
--- a/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
+++ b/meta/recipes-bsp/zaurusd/zaurusd_svn.bb
@@ -6,9 +6,10 @@ DEPENDS = "tslib"
 RDEPENDS_${PN} = "xrandr"
 SRCREV = "426"
 PV = "0.0+svnr${SRCPV}"
-PR = "r2"
+PR = "r3"
 
-SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=zaurusd;proto=http"
+SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=zaurusd;proto=http \
+	file://fix_makefile.patch"
 
 S = "${WORKDIR}/${PN}"
 
-- 
1.7.3.4


