Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48F8A4C81207
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 01:48:28 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Jan 2011 23:48:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,385,1291622400"; d="scan'208";a="701170240"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 26 Jan 2011 23:48:27 -0800
Message-Id: <7a0a83046957272a5575afafe615a47c57eb5b85.1296115229.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1296115229.git.dongxiao.xu@intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
Old-Date: Thu, 27 Jan 2011 14:22:42 +0800
Date: Thu, 27 Jan 2011 16:04:31 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 2/3] rm_work.bbclass: handle stamp files while doing rm_work
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
X-List-Received-Date: Thu, 27 Jan 2011 07:48:28 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

If rm_work is scheduled, we need to remove the stamps of fetch, unpack,
patch, etc, while just leaving the setscene varients.

For example, we'd task stamps like:

xxx-1.4.7-r3.do_compile
xxx-1.4.7-r3.do_configure
xxx-1.4.7-r3.do_fetch
xxx-1.4.7-r3.do_generate_toolchain_file
xxx-1.4.7-r3.do_install
xxx-1.4.7-r3.do_package.emenlow
xxx-1.4.7-r3.do_package_write
xxx-1.4.7-r3.do_package_write_ipk
xxx-1.4.7-r3.do_package_write_rpm
xxx-1.4.7-r3.do_patch
xxx-1.4.7-r3.do_populate_sysroot.emenlow
xxx-1.4.7-r3.do_setscene
xxx-1.4.7-r3.do_unpack

and after rm_work, we have stamps of:

xxx-1.4.7-r3.do_package_setscene.emenlow
xxx-1.4.7-r3.do_package_write_ipk_setscene
xxx-1.4.7-r3.do_package_write_rpm_setscene
xxx-1.4.7-r3.do_populate_sysroot_setscene.emenlow

This can solve the issue we meet if we force to schedule a task after
contents in ${WORKDIR} are removed.

Also this can solve the rm_work issue we met after machine specific
sysroot is implemented.

Thanks for Richard's suggestion to tracking these issues down.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/rm_work.bbclass |   17 +++++++++++++++++
 1 files changed, 17 insertions(+), 0 deletions(-)

diff --git a/meta/classes/rm_work.bbclass b/meta/classes/rm_work.bbclass
index 260ecb0..a151f4c 100644
--- a/meta/classes/rm_work.bbclass
+++ b/meta/classes/rm_work.bbclass
@@ -26,6 +26,23 @@ do_rm_work () {
     # Need to add pseudo back or subsqeuent work in this workdir
     # might fail since setscene may not rerun to recreate it
     mkdir ${WORKDIR}/pseudo/
+
+    rm -rf `ls ${STAMP}* | grep -v sigdata | grep -v do_populate_sysroot | grep -v do_package` ${STAMP}.do_package_write
+
+    for stamp in `ls ${STAMP}* | grep do_package_write_* | grep -v setscene`
+    do
+        mv $stamp $stamp\_setscene
+    done
+
+    for task in do_populate_sysroot do_package
+    do
+        if [ -e ${STAMP}.$task ]; then
+            mv ${STAMP}.$task ${STAMP}.$task\_setscene
+        elif [ -e ${STAMP}.$task.${MACHINE} ]; then
+            mv ${STAMP}.$task.${MACHINE} ${STAMP}.$task\_setscene.${MACHINE}
+        fi
+    done
+
 }
 addtask rm_work after do_${RMWORK_ORIG_TASK}
 
-- 
1.6.3.3


