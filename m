Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id A494C4C80BD4
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 18:47:11 -0600 (CST)
Received: from localhost ([127.0.0.1] helo=mefesto.yanok.lan)
	by ocean.emcraft.com with esmtp (Exim 4.69)
	(envelope-from <yanok@emcraft.com>)
	id 1Pg59g-0002ad-6M; Fri, 21 Jan 2011 03:47:08 +0300
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org,
	aalonso00@gmail.com,
	saul.wold@intel.com
Date: Fri, 21 Jan 2011 03:47:09 +0300
Message-Id: <1295570829-28045-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <4D38725A.9050300@intel.com>
References: <4D38725A.9050300@intel.com>
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH] native,nativesdk,crosssdk: reset TARGET_FPU
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
X-List-Received-Date: Fri, 21 Jan 2011 00:47:11 -0000

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
 meta/classes/crosssdk.bbclass  |    1 +
 meta/classes/native.bbclass    |    1 +
 meta/classes/nativesdk.bbclass |    1 +
 3 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/classes/crosssdk.bbclass b/meta/classes/crosssdk.bbclass
index 23db163..ac85507 100644
--- a/meta/classes/crosssdk.bbclass
+++ b/meta/classes/crosssdk.bbclass
@@ -11,6 +11,7 @@ TARGET_VENDOR = "${SDK_VENDOR}"
 TARGET_OS = "${SDK_OS}"
 TARGET_PREFIX = "${SDK_PREFIX}"
 TARGET_CC_ARCH = "${SDK_CC_ARCH}"
+TARGET_FPU = ""
 
 target_libdir = "${SDKPATHNATIVE}${libdir_nativesdk}"
 target_includedir = "${SDKPATHNATIVE}${includedir_nativesdk}"
diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 3ca9d62..ac9df98 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -22,6 +22,7 @@ TARGET_OS = "${BUILD_OS}"
 TARGET_VENDOR = "${BUILD_VENDOR}"
 TARGET_PREFIX = "${BUILD_PREFIX}"
 TARGET_CC_ARCH = "${BUILD_CC_ARCH}"
+TARGET_FPU = ""
 
 HOST_ARCH = "${BUILD_ARCH}"
 HOST_OS = "${BUILD_OS}"
diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 154bd82..ba80364 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -32,6 +32,7 @@ TARGET_VENDOR = "${SDK_VENDOR}"
 TARGET_OS = "${SDK_OS}"
 TARGET_PREFIX = "${SDK_PREFIX}"
 TARGET_CC_ARCH = "${SDK_CC_ARCH}"
+TARGET_FPU = ""
 
 CPPFLAGS = "${BUILDSDK_CPPFLAGS}"
 CFLAGS = "${BUILDSDK_CFLAGS}"
-- 
1.7.2.3


