Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F27F4C811E7
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:24:14 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2011 03:24:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,326,1291622400"; d="scan'208";a="647255362"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2011 03:24:02 -0800
Message-Id: <5e7d2160749c1364b238aa38d358bf5c0bfabb37.1295089968.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295089968.git.dexuan.cui@intel.com>
References: <cover.1295089968.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Sat, 15 Jan 2011 18:50:14 +0800
Date: Sat, 15 Jan 2011 19:23:35 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] libc-package.bbclass: should not rm scsi/*.h
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
X-List-Received-Date: Sat, 15 Jan 2011 11:24:14 -0000

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


