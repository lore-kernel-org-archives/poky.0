Return-Path: <valentin.popa@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC97DE00BE0
	for <poky@yoctoproject.org>; Fri,  4 Apr 2014 03:31:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Apr 2014 03:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,794,1389772800"; d="scan'208";a="514386514"
Received: from vpopa-desktop.rb.intel.com ([10.237.105.76])
	by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2014 03:31:08 -0700
From: Valentin Popa <valentin.popa@intel.com>
To: poky@yoctoproject.org
Date: Fri,  4 Apr 2014 13:31:20 +0300
Message-Id: <1396607480-30717-1-git-send-email-valentin.popa@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] poky-tiny: enable LFS for uclibc
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Apr 2014 10:31:12 -0000

Enable large file support for uclibc.
This patch also solves the build issue
reported for uclibc (poky-tiny).

[YOCTO #5865]

Signed-off-by: Valentin Popa <valentin.popa@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 5322b7d..2548d79 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -88,6 +88,9 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                    ${DISTRO_FEATURES_LIBC} \
                   "
 
+# Enable LFS - see bug YOCTO #5865
+DISTRO_FEATURES_append_libc-uclibc = " largefile"
+
 # Use tmpdevfs and the busybox runtime services
 VIRTUAL-RUNTIME_dev_manager = ""
 VIRTUAL-RUNTIME_login_manager = ""
-- 
1.8.3.2


