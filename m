Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA9DEE00A2F; Wed, 18 Jun 2014 17:39:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A45B8E00A2F
	for <poky@yoctoproject.org>; Wed, 18 Jun 2014 17:39:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jun 2014 17:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,503,1400050800"; d="scan'208";a="550099128"
Received: from unknown (HELO swold-linux.bigsur.com) ([10.255.12.166])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2014 17:39:10 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 18 Jun 2014 17:39:09 -0700
Message-Id: <1403138349-12368-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [PATCH] local.conf.sample: Add sdl to nativesdk qemu PACKAGECONFIG
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
X-List-Received-Date: Thu, 19 Jun 2014 00:39:37 -0000

Enable SDL by default for nativesdk as we do with natve, this will
allow qemu with ADT to use graphics no vnc by default.

[YOCTO #6446]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta-yocto/conf/local.conf.sample | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 0111801..bcb0864 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -243,6 +243,7 @@ BB_DISKMON_DIRS = "\
 # seen. The two lines below enable the SDL backend too. This assumes there is a
 # libsdl library available on your build system.
 PACKAGECONFIG_pn-qemu-native = "sdl"
+PACKAGECONFIG_pn-nativesdk-qemu = "sdl"
 ASSUME_PROVIDED += "libsdl-native"
 
 
-- 
1.8.3.1


