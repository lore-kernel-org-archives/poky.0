Return-Path: <kmsywula@ecsmtp.ir.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE2EEE0074F
	for <poky@yoctoproject.org>; Tue, 28 Jan 2014 09:23:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Jan 2014 09:23:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,737,1384329600"; d="scan'208";a="472127249"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jan 2014 09:23:50 -0800
Received: from irsswdev001.ir.intel.com (irsswdev001.ir.intel.com
	[163.33.195.157])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
	s0SHNo7g013155; Tue, 28 Jan 2014 17:23:50 GMT
Received: from irsswdev001.ir.intel.com (localhost [127.0.0.1])
	by irsswdev001.ir.intel.com with ESMTP id s0SHNovd009503;
	Tue, 28 Jan 2014 17:23:50 GMT
Received: (from kmsywula@localhost)
	by irsswdev001.ir.intel.com with œ id s0SHNo7A009498;
	Tue, 28 Jan 2014 17:23:50 GMT
From: krzysztof.m.sywula@intel.com
To: poky@yoctoproject.org
Date: Tue, 28 Jan 2014 17:23:13 +0000
Message-Id: <1390929793-9170-1-git-send-email-krzysztof.m.sywula@intel.com>
X-Mailer: git-send-email 1.7.12.2
Subject: [PATCH] Revert "poky-tiny: Assume pkgconfig is provided"
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
X-List-Received-Date: Tue, 28 Jan 2014 17:23:52 -0000

From: Krzysztof Sywula <krzysztof.m.sywula@intel.com>

This reverts commit a54932dc373ec130f7a166d144f4d5744ec52097.
pkgconfig does not pull in glib->dbus anymore

Signed-off-by: Krzysztof Sywula <krzysztof.m.sywula@intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 3196fa0..95ef6c0 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -55,11 +55,6 @@ ENABLE_WIDEC="false"
 # eglibc->bash->gettext->libc-posix-clang-wchar dependency.
 USE_NLS="no"
 
-# -dev packages require pkgconfig, but it pulls in glib->dbus->shadow
-# which breaks with tiny's minimal libc.
-# -dev packages are not currently supported on poky-tiny.
-ASSUME_PROVIDED += "pkgconfig$"
-
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
 DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
-- 
1.7.12.2


