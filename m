Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1F6DE01447
	for <poky@yoctoproject.org>; Fri,  7 Sep 2012 17:12:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Sep 2012 17:12:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,388,1344236400"; d="scan'208";a="219615606"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.13.76])
	by fmsmga001.fm.intel.com with ESMTP; 07 Sep 2012 17:12:02 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  7 Sep 2012 17:12:02 -0700
Message-Id: <1347063122-29824-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] poky-tiny: Enable x86-64 to build eglibc correctly
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
X-List-Received-Date: Sat, 08 Sep 2012 00:12:02 -0000

There is bug in the eglibc configure scripts that prevent a
x86-64 from configuring correctly and finding the smaller
library fucntions.

This has been reported to the eglibc community via the issues ML

Cc: Darren Hart <dvhart@linux.intel.com>

[YOCTO #2943]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index f3cc874..3196fa0 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -63,6 +63,7 @@ ASSUME_PROVIDED += "pkgconfig$"
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
 DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
+DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
 
 # Required for "who"
 DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
-- 
1.7.7.6


