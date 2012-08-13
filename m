Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17DB9E01404
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:09 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 582B23042E
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:02 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:40 -0700
Message-Id: <90407958496357d75dfa73c2b803bfce7a253fec.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
MIME-Version: 1.0
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 582B23042E.8E886
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 14/57] qemu-0.15.1: add patch to fix compilatation problems on powerpc
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Matthew McClintock <msm@freescale.com>

ERROR: Function failed: do_compile (see /opt/yocto/cache-build/p5020ds-64b/build_p5020ds-64b_release/tmp/work/ppc64e5500-fsl-linux/qemu-0.15.1-r6/temp/log.do_compile.28447 for further information)
ERROR: Logfile of failure stored in: /opt/yocto/cache-build/p5020ds-64b/build_p5020ds-64b_release/tmp/work/ppc64e5500-fsl-linux/qemu-0.15.1-r6/temp/log.do_compile.28447
Log data follows:
| DEBUG: SITE files ['endian-big', 'bit-64', 'powerpc-common', 'common-linux', 'common-glibc', 'powerpc-linux', 'powerpc64-linux', 'common']
| ERROR: Function failed: do_compile (see /opt/yocto/cache-build/p5020ds-64b/build_p5020ds-64b_release/tmp/work/ppc64e5500-fsl-linux/qemu-0.15.1-r6/temp/log.do_compile.28447 for further information)
| NOTE: make -j 24
|   LINK  ppc-linux-user/qemu-ppc
| /opt/yocto/cache-build/p5020ds-64b/build_p5020ds-64b_release/tmp/sysroots/x86_64-linux/usr/libexec/ppc64e5500-fsl-linux/gcc/powerpc64-fsl-linux/4.6.4/ld:/opt/yocto/cache-build/p5020ds-64b/build_p5020ds-64b_release/tmp/work/ppc64e5500-fsl-linux/qemu-0.15.1-r6/qemu-0.15.1/ppc64.ld:84: syntax error
| collect2: ld returned 1 exit status
| make[1]: *** [qemu-ppc] Error 1
| make: *** [subdir-ppc-linux-user] Error 2
| make: *** Waiting for unfinished jobs....
| ERROR: oe_runmake failed

(From OE-Core rev: a9207aad5b163a071cd8298517d61514c587e0ed)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../qemu-0.15.1/0001-ppc64-Fix-linker-script.patch |   46 ++++++++++++++++++++
 meta/recipes-devtools/qemu/qemu_0.15.1.bb          |    3 +-
 2 files changed, 48 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.15.1/0001-ppc64-Fix-linker-script.patch

diff --git a/meta/recipes-devtools/qemu/qemu-0.15.1/0001-ppc64-Fix-linker-script.patch b/meta/recipes-devtools/qemu/qemu-0.15.1/0001-ppc64-Fix-linker-script.patch
new file mode 100644
index 0000000..d64d76f
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.15.1/0001-ppc64-Fix-linker-script.patch
@@ -0,0 +1,46 @@
+Upstream-Status: Backport
+
+From 7c0a3409627604c111d5c5e1ce4e0224c2b56315 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
+Date: Tue, 4 Oct 2011 05:14:52 +0000
+Subject: [PATCH] ppc64: Fix linker script
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Since commit 8733f609 (Fix linker scripts) linking on Linux/ppc64 fails:
+
+  LINK  ppc64-linux-user/qemu-ppc64
+/usr/lib64/gcc/powerpc64-suse-linux/4.3/../../../../powerpc64-suse-linux/bin/ld:/home/afaerber/qemu/ppc64.ld:84: syntax error
+collect2: ld gab 1 als Ende-Status zurück
+make[1]: *** [qemu-ppc64] Fehler 1
+make: *** [subdir-ppc64-linux-user] Fehler 2
+
+Fix by removing a leftover line in the ppc64 linker script.
+
+Cc: Gerd Hoffmann <kraxel@redhat.com>
+Cc: Blue Swirl <blauwirbel@gmail.com>
+Signed-off-by: Andreas Färber <afaerber@suse.de>
+Signed-off-by: Alexander Graf <agraf@suse.de>
+---
+ ppc64.ld |    4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/ppc64.ld b/ppc64.ld
+index 0059ee5..0a7c0dd 100644
+--- a/ppc64.ld
++++ b/ppc64.ld
+@@ -81,8 +81,8 @@ SECTIONS
+   .sdata2         : { *(.sdata2 .sdata2.* .gnu.linkonce.s2.*) }
+   .sbss2          : { *(.sbss2 .sbss2.* .gnu.linkonce.sb2.*) }
+   .eh_frame_hdr : { *(.eh_frame_hdr) }
+-*(.gcc_except_table.*) } /* Adjust the address for the data segment.  We want to
+-adjust up to +     the same address within the page on the next page up.  */
++  /* Adjust the address for the data segment.  We want to adjust up to
++     the same address within the page on the next page up.  */
+   . = ALIGN (0x10000) - ((0x10000 - .) & (0x10000 - 1)); . = DATA_SEGMENT_ALIGN
+ (0x10000, 0x1000);   /* Exception handling  */
+   .eh_frame       : { KEEP (*(.eh_frame)) }
+-- 
+1.7.10
+
diff --git a/meta/recipes-devtools/qemu/qemu_0.15.1.bb b/meta/recipes-devtools/qemu/qemu_0.15.1.bb
index e90f339..54f746b 100644
--- a/meta/recipes-devtools/qemu/qemu_0.15.1.bb
+++ b/meta/recipes-devtools/qemu/qemu_0.15.1.bb
@@ -3,7 +3,7 @@ require qemu.inc
 LIC_FILES_CHKSUM = "file://COPYING;md5=441c28d2cf86e15a37fa47e15a72fbac \
                     file://COPYING.LIB;endline=24;md5=c04def7ae38850e7d3ef548588159913"
 
-PR = "r6"
+PR = "r7"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-${PV}"
 FILESDIR = "${WORKDIR}"
@@ -19,6 +19,7 @@ SRC_URI = "\
     file://larger_default_ram_size.patch \
     file://arm-bgr.patch \
     file://a4d1f142542935b90d2eb30f3aead4edcf455fe6.patch \
+    file://0001-ppc64-Fix-linker-script.patch \
     "
 
 # Only use the GL passthrough patches for native/nativesdk versions
-- 
1.7.9.5


