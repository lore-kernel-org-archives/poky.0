Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 740394C80B77
	for <poky@yoctoproject.org>; Tue, 17 May 2011 03:42:26 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 May 2011 01:42:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,224,1304319600"; d="scan'208";a="748363503"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga001.jf.intel.com with ESMTP; 17 May 2011 01:42:11 -0700
Message-Id: <c8746cb55615b436c86d37ac5606d14aa7910f39.1305622072.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305622072.git.dongxiao.xu@intel.com>
References: <cover.1305622072.git.dongxiao.xu@intel.com>
Old-Date: Tue, 17 May 2011 16:23:05 +0800
Date: Tue, 17 May 2011 16:48:56 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 3/8] pulseaudio: add upstream status for pulseaudio-0.9.15's patches
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
X-List-Received-Date: Tue, 17 May 2011 08:42:26 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../pulseaudio/pulseaudio-0.9.15/alsaerror.patch   |    2 ++
 .../pulseaudio-0.9.15/autoconf_version.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.15/buildfix.patch    |    2 ++
 .../pulseaudio/pulseaudio-0.9.15/fallback.patch    |    2 ++
 .../pulseaudio-0.9.15/gcc4-compile-fix.patch       |    2 ++
 .../pulseaudio/pulseaudio-0.9.15/periodfix.patch   |    2 ++
 6 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/alsaerror.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/alsaerror.patch
index 2efa3e8..0f09d2e 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/alsaerror.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/alsaerror.patch
@@ -6,6 +6,8 @@ X-Git-Url: http://git.0pointer.de/?p=pulseaudio.git;a=commitdiff_plain;h=98a25c5
 alsa: properly convert return values of snd_strerror() to utf8
 ---
 
+Upstream-Status: Backport
+
 diff --git a/src/modules/alsa/alsa-sink.c b/src/modules/alsa/alsa-sink.c
 index 2fbcd7b..41e8b47 100644
 --- a/src/modules/alsa/alsa-sink.c
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch
index 7a0759d..158c883 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/autoconf_version.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: pulseaudio-0.9.15/configure.ac
 ===================================================================
 --- pulseaudio-0.9.15.orig/configure.ac	2009-04-14 00:09:53.000000000 +0100
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/buildfix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/buildfix.patch
index ca01e0d..da46d4b 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/buildfix.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/buildfix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: pulseaudio-0.9.11/src/pulsecore/atomic.h
 ===================================================================
 --- pulseaudio-0.9.11.orig/src/pulsecore/atomic.h
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/fallback.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/fallback.patch
index 2fae0d4..5808d41 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/fallback.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/fallback.patch
@@ -10,6 +10,8 @@ only the raw 'hw' device exists but no 'front' although it's a proper
 2ch stereo device.
 ---
 
+Upstream-Status: Backport
+
 diff --git a/src/modules/alsa/alsa-util.c b/src/modules/alsa/alsa-util.c
 index 18d6880..a3a0450 100644
 --- a/src/modules/alsa/alsa-util.c
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch
index 34ad026..f229687 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/gcc4-compile-fix.patch
@@ -3,6 +3,8 @@
 | pulsecore/core-util.c:547: error: label at end of compound statement
 | Signed off: mickey@openmoko.org
 |
+Upstream-Status: Pending
+
 Index: pulseaudio-0.9.6/src/pulsecore/core-util.c
 ===================================================================
 --- pulseaudio-0.9.6.orig/src/pulsecore/core-util.c
diff --git a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/periodfix.patch b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/periodfix.patch
index 3a1c605..4fc6c15 100644
--- a/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/periodfix.patch
+++ b/meta/recipes-multimedia/pulseaudio/pulseaudio-0.9.15/periodfix.patch
@@ -1,5 +1,7 @@
 X-Git-Url: http://git.0pointer.de/?p=pulseaudio.git;a=blobdiff_plain;f=src%2Fmodules%2Falsa%2Falsa-util.c;h=107bec357c7889f0197853f5e5f1951a5a2f5be0;hp=a3a045080dac0e1b30e8671443ce73a03337cf14;hb=4bffc7849f7898fa85dd6ac8e735db86b57814b3;hpb=d2b5ae5525e9036c4f91b1615879a5a07aac5bf2
 
+Upstream-Status: Backport
+
 diff --git a/src/modules/alsa/alsa-util.c b/src/modules/alsa/alsa-util.c
 index a3a0450..107bec3 100644
 --- a/src/modules/alsa/alsa-util.c
-- 
1.7.1


