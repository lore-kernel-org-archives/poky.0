Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94F104C811BB
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 23:24:29 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Jan 2011 21:24:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="375481960"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2011 21:24:29 -0800
Message-Id: <16f3a52033f51800e59729c1031f39c723dbcc76.1295241502.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295241502.git.dexuan.cui@intel.com>
References: <cover.1295241502.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Sat, 15 Jan 2011 18:50:14 +0800
Date: Mon, 17 Jan 2011 13:24:00 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH v2 2/2] libc-package.bbclass: should not rm scsi/*.h
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
X-List-Received-Date: Mon, 17 Jan 2011 05:24:29 -0000

{e}glibc should install the scsi/*.h files, which are needed by hal.
Currently hal can build because eglibc-initial (which has its own do_install)
installs the files. In future eglibc will have its own sysroot, so hal
won't build.

BTW: in OE side, eglibc's do_install also doesn't remove the files.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/classes/libc-package.bbclass |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/meta/classes/libc-package.bbclass b/meta/classes/libc-package.bbclass
index 4709b33..733f26b 100644
--- a/meta/classes/libc-package.bbclass
+++ b/meta/classes/libc-package.bbclass
@@ -95,9 +95,6 @@ do_install() {
 		mv ${WORKDIR}/SUPPORTED.tmp ${WORKDIR}/SUPPORTED
 	done
 	rm -f ${D}{sysconfdir}/rpc
-	rm -f ${D}${includedir}/scsi/sg.h
-	rm -f ${D}${includedir}/scsi/scsi_ioctl.h
-	rm -f ${D}${includedir}/scsi/scsi.h
 	rm -rf ${D}${datadir}/zoneinfo
 	rm -rf ${D}${libexecdir}/getconf
 }
-- 
1.7.2


