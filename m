Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 364E2E01402
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:39 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4E28F3042E
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:33 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:53 -0700
Message-Id: <8810a13820656191b7921d9f503d1af0af408295.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4E28F3042E.C59C4
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 27/57] xserver-xorg: Fix build on powerpc
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:39 -0000

From: Khem Raj <raj.khem@gmail.com>

(From OE-Core rev: 8a11f42d3ed526fae0c0bb050d7d0519904591b4)

Signed-off-by: Khem Raj <raj.khem@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../xorg-xserver/xserver-xorg-1.11.2.inc           |    9 +++---
 .../xserver-xorg-1.11.2/gcc-47-warning.patch       |   33 ++++++++++++++++++++
 2 files changed, 38 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2/gcc-47-warning.patch

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2.inc b/meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2.inc
index f5fa629..6a86af4 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2.inc
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2.inc
@@ -1,10 +1,11 @@
-SRC_URI += "file://crosscompile.patch"
-
 # Misc build failure for master HEAD
-SRC_URI += "file://fix_open_max_preprocessor_error.patch"
+SRC_URI += "file://crosscompile.patch \
+            file://fix_open_max_preprocessor_error.patch \
+            file://gcc-47-warning.patch \
+           "
 
 SRC_URI[md5sum] = "8796fff441e5435ee36a72579008af24"
 SRC_URI[sha256sum] = "fa415decf02027ca278b06254ccfbcceba2a83c2741405257ebf749da4a73cf2"
 
-PR = "r1"
+PR = "r2"
 
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2/gcc-47-warning.patch b/meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2/gcc-47-warning.patch
new file mode 100644
index 0000000..ed4eaac
--- /dev/null
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg-1.11.2/gcc-47-warning.patch
@@ -0,0 +1,33 @@
+This patch fixes errors on powerpc like below
+
+| lnx_video.c: In function 'unmapVidMem':
+| lnx_video.c:472:24: error: cast from pointer to integer of different size [-Werror=pointer-to-int-cast]
+
+Its in 1.12 branch 
+
+http://cgit.freedesktop.org/xorg/xserver/commit/?h=server-1.12-branch&id=eb3377ffb8a7baa26c9831e56ed782d48b28fa71
+
+Upstream-Status: Backport
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+
+Index: xorg-server-1.11.2/hw/xfree86/os-support/linux/lnx_video.c
+===================================================================
+--- xorg-server-1.11.2.orig/hw/xfree86/os-support/linux/lnx_video.c	2012-05-01 06:32:34.186489019 -0700
++++ xorg-server-1.11.2/hw/xfree86/os-support/linux/lnx_video.c	2012-05-01 06:49:14.926537452 -0700
+@@ -469,11 +469,11 @@
+ static void
+ unmapVidMem(int ScreenNum, pointer Base, unsigned long Size)
+ {
+-    memType alignOff = (memType)Base 
+-	- ((memType)Base & ~(getpagesize() - 1));
++    uintptr_t alignOff = (uintptr_t)Base 
++	- ((uintptr_t)Base & ~(getpagesize() - 1));
+ 
+-    DebugF("alignment offset: %lx\n",alignOff);
+-    munmap((caddr_t)((memType)Base - alignOff), (Size + alignOff));
++    DebugF("alignment offset: %lx\n",(unsigned long)alignOff);
++    munmap((void*)((uintptr_t)Base - alignOff), (Size + alignOff));
+ }
+ 
+ 
-- 
1.7.9.5


