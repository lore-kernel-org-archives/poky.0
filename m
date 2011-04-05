Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF0A94C80050
	for <poky@pokylinux.org>; Mon,  4 Apr 2011 20:13:50 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 400B31C1D9E0;
	Tue,  5 Apr 2011 03:13:49 +0200 (CEST)
X-Auth-Info: ozmVeg9EdabQAMJlD3rZfmKtXz8y3tVDCuhbBfxmbfY=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 3AC9B1C00097;
	Tue,  5 Apr 2011 03:13:49 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id E30E64BC152B;
	Tue,  5 Apr 2011 03:13:48 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 859F218563702; Tue,  5 Apr 2011 03:13:47 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Tue,  5 Apr 2011 03:13:45 +0200
Message-Id: <1301966025-26492-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [REPOST][PATCH] native, nativesdk, crosssdk: reset TARGET_FPU
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
X-List-Received-Date: Tue, 05 Apr 2011 01:13:51 -0000

When building one of the native, nativesdk or crosssdk packages TARGET_*
variables' values are no longer related to the target we set via MACHINE
variable, they are now related to the BUILD (native) or SDK (nativesdk,
crosssdk) targets instead. We need to change TARGET_FPU variable
accordingly or some of the recipes (the ones that check for TARGET_FPU
value, most notably gcc and eglibc) might be confused.

It's probably cleaner not to reset TARGET_FPU but to change it to
something like ${BUILD_FPU} (for native) or ${SDK_FPU} (for crosssdk and
nativesdk) but as long as BUILD and SDK are x86 it's safe to just reset
TARGET_FPU.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---

Please apply this patch. TARGET_FPU = "soft" _really_ confuses crosssdk recipes...

 meta/classes/crosssdk.bbclass  |    1 +
 meta/classes/native.bbclass    |    1 +
 meta/classes/nativesdk.bbclass |    1 +
 3 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/classes/crosssdk.bbclass b/meta/classes/crosssdk.bbclass
index 75fcfef..3952ebd 100644
--- a/meta/classes/crosssdk.bbclass
+++ b/meta/classes/crosssdk.bbclass
@@ -9,6 +9,7 @@ TARGET_VENDOR = "${SDK_VENDOR}"
 TARGET_OS = "${SDK_OS}"
 TARGET_PREFIX = "${SDK_PREFIX}"
 TARGET_CC_ARCH = "${SDK_CC_ARCH}"
+TARGET_FPU = ""
 
 target_libdir = "${SDKPATHNATIVE}${libdir_nativesdk}"
 target_includedir = "${SDKPATHNATIVE}${includedir_nativesdk}"
diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index cc32cf5..d9e67f6 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -24,6 +24,7 @@ TARGET_OS = "${BUILD_OS}"
 TARGET_VENDOR = "${BUILD_VENDOR}"
 TARGET_PREFIX = "${BUILD_PREFIX}"
 TARGET_CC_ARCH = "${BUILD_CC_ARCH}"
+TARGET_FPU = ""
 
 HOST_ARCH = "${BUILD_ARCH}"
 HOST_OS = "${BUILD_OS}"
diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 587a907..cd34a79 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -34,6 +34,7 @@ TARGET_VENDOR = "${SDK_VENDOR}"
 TARGET_OS = "${SDK_OS}"
 TARGET_PREFIX = "${SDK_PREFIX}"
 TARGET_CC_ARCH = "${SDK_CC_ARCH}"
+TARGET_FPU = ""
 
 CPPFLAGS = "${BUILDSDK_CPPFLAGS}"
 CFLAGS = "${BUILDSDK_CFLAGS}"
-- 
1.7.4


