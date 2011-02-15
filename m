Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 517AD4C8090C
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 18:55:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 14 Feb 2011 16:55:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,471,1291622400"; d="scan'208";a="887477087"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2011 16:55:32 -0800
Message-Id: <acf0128d9ce7a0d86e2125d6c463438f8a177cc7.1297732450.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297732450.git.dongxiao.xu@intel.com>
References: <cover.1297732450.git.dongxiao.xu@intel.com>
Old-Date: Tue, 15 Feb 2011 09:00:34 +0800
Date: Tue, 15 Feb 2011  9:15:42 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] gypsy: Change gypsy upstream repo address
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
X-List-Received-Date: Tue, 15 Feb 2011 00:55:33 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This fixes [BUGID #623].

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/gypsy/gypsy_git.bb |   15 +++++++++++++++
 meta/recipes-connectivity/gypsy/gypsy_svn.bb |    9 ---------
 2 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-connectivity/gypsy/gypsy_git.bb
 delete mode 100644 meta/recipes-connectivity/gypsy/gypsy_svn.bb

diff --git a/meta/recipes-connectivity/gypsy/gypsy_git.bb b/meta/recipes-connectivity/gypsy/gypsy_git.bb
new file mode 100644
index 0000000..1357240
--- /dev/null
+++ b/meta/recipes-connectivity/gypsy/gypsy_git.bb
@@ -0,0 +1,15 @@
+require gypsy.inc
+
+DEFAULT_PREFERENCE = "-1"
+
+PV = "0.8+git${SRCPV}"
+S = "${WORKDIR}/git"
+
+LICENSE = "GPLv2+ & LGPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://COPYING.lib;md5=7fbc338309ac38fefcd64b04bb903e34 \
+                    file://src/main.c;beginline=1;endline=25;md5=3fe64e27e61b289b77383a54a982cbdd \
+                    file://gypsy/gypsy-time.h;beginline=1;endline=24;md5=06432ea19a7b6607428d04d9dadc37fd"
+
+SRC_URI = "git://anongit.freedesktop.org/gypsy;protocol=git \
+           file://fixups.patch;patch=1"
diff --git a/meta/recipes-connectivity/gypsy/gypsy_svn.bb b/meta/recipes-connectivity/gypsy/gypsy_svn.bb
deleted file mode 100644
index 2e9840a..0000000
--- a/meta/recipes-connectivity/gypsy/gypsy_svn.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require gypsy.inc
-
-DEFAULT_PREFERENCE = "-1"
-
-PV = "0.0+svnr${SRCPV}"
-S = "${WORKDIR}/${PN}"
-
-SRC_URI = "svn://svn.o-hand.com/repos/${PN}/trunk;module=${PN};proto=http \
-           file://fixups.patch;patch=1"
-- 
1.6.3.3


