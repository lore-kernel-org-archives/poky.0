Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A111E00301
	for <poky@yoctoproject.org>; Thu,  3 Nov 2011 14:31:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70960389"
Received: from unknown (HELO shamshir.jf.intel.com) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 14:31:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu,  3 Nov 2011 14:31:19 -0700
Message-Id: <e3e50d2c69a5e78c32ca9717e313c6c79f7efd97.1320355735.git.josh@linux.intel.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
In-Reply-To: <cover.1320355735.git.josh@linux.intel.com>
References: <cover.1320355735.git.josh@linux.intel.com>
Subject: [BERNARD 07/17] libpng: backport security fixes
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
X-List-Received-Date: Thu, 03 Nov 2011 21:31:32 -0000

This patch includes various security fixes from upstream (though the patches
were taken from Debian's packaging) to address the following CVE issues:

libpng CVE-2011-2690
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2011-2690
libpng CVE-2011-2692
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2011-2692
libpng CVE-2011-2501
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2011-2501

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../libpng/libpng/02-CVE-2011-2501.patch           |   29 +++++++++++++++
 .../libpng/libpng/03-CVE-2011-2690.patch           |   38 ++++++++++++++++++++
 .../libpng/libpng/04-CVE-2011-2692.patch           |   29 +++++++++++++++
 meta/recipes-multimedia/libpng/libpng_1.2.44.bb    |    7 +++-
 4 files changed, 101 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-multimedia/libpng/libpng/02-CVE-2011-2501.patch
 create mode 100644 meta/recipes-multimedia/libpng/libpng/03-CVE-2011-2690.patch
 create mode 100644 meta/recipes-multimedia/libpng/libpng/04-CVE-2011-2692.patch

diff --git a/meta/recipes-multimedia/libpng/libpng/02-CVE-2011-2501.patch b/meta/recipes-multimedia/libpng/libpng/02-CVE-2011-2501.patch
new file mode 100644
index 0000000..c4f98c6
--- /dev/null
+++ b/meta/recipes-multimedia/libpng/libpng/02-CVE-2011-2501.patch
@@ -0,0 +1,29 @@
+This patch is taken from upstream and is a fix for CVE CVE-2011-2501
+
+Description: fix denial of service via error message data
+Origin: upstream, http://libpng.git.sourceforge.net/git/gitweb.cgi?p=libpng/libpng;a=commitdiff;h=65e6d5a34f49acdb362a0625a706c6b914e670af
+
+Upstream-Status: Backport
+
+Signed-off-by: Joshua Lock <josh@linux.intel.com>
+
+Index: libpng-1.2.44/pngerror.c
+===================================================================
+--- libpng-1.2.44.orig/pngerror.c	2011-07-26 08:18:20.769498103 -0400
++++ libpng-1.2.44/pngerror.c	2011-07-26 08:18:32.819498098 -0400
+@@ -181,8 +181,13 @@
+    {
+       buffer[iout++] = ':';
+       buffer[iout++] = ' ';
+-      png_memcpy(buffer + iout, error_message, PNG_MAX_ERROR_TEXT);
+-      buffer[iout + PNG_MAX_ERROR_TEXT - 1] = '\0';
++
++      iin = 0;
++      while (iin < PNG_MAX_ERROR_TEXT-1 && error_message[iin] != '\0')
++         buffer[iout++] = error_message[iin++];
++
++      /* iin < PNG_MAX_ERROR_TEXT, so the following is safe: */
++      buffer[iout] = '\0';
+    }
+ }
+ 
diff --git a/meta/recipes-multimedia/libpng/libpng/03-CVE-2011-2690.patch b/meta/recipes-multimedia/libpng/libpng/03-CVE-2011-2690.patch
new file mode 100644
index 0000000..f38a222
--- /dev/null
+++ b/meta/recipes-multimedia/libpng/libpng/03-CVE-2011-2690.patch
@@ -0,0 +1,38 @@
+This patch is taken from upstream and is a fix for CVE CVE-2011-2690
+
+Description: fix denial of service and possible arbitrary code
+ execution via crafted PNG image
+Origin: upstream, http://libpng.git.sourceforge.net/git/gitweb.cgi?p=libpng/libpng;a=commit;h=d572394c2a018ef22e9685ac189f5f05c08ea6f5
+
+Upstream-Status: Backport
+
+Signed-off-by: Joshua Lock <josh@linux.intel.com>
+
+Index: libpng-1.2.44/pngrtran.c
+===================================================================
+--- libpng-1.2.44.orig/pngrtran.c	2011-07-26 08:18:55.489498092 -0400
++++ libpng-1.2.44/pngrtran.c	2011-07-26 08:19:02.079498092 -0400
+@@ -676,10 +676,21 @@
+ png_set_rgb_to_gray(png_structp png_ptr, int error_action, double red,
+    double green)
+ {
+-   int red_fixed = (int)((float)red*100000.0 + 0.5);
+-   int green_fixed = (int)((float)green*100000.0 + 0.5);
++   int red_fixed, green_fixed;
+    if (png_ptr == NULL)
+       return;
++   if (red > 21474.83647 || red < -21474.83648 ||
++       green > 21474.83647 || green < -21474.83648)
++   {
++      png_warning(png_ptr, "ignoring out of range rgb_to_gray coefficients");
++      red_fixed = -1;
++      green_fixed = -1;
++   }
++   else
++   {
++      red_fixed = (int)((float)red*100000.0 + 0.5);
++      green_fixed = (int)((float)green*100000.0 + 0.5);
++   }
+    png_set_rgb_to_gray_fixed(png_ptr, error_action, red_fixed, green_fixed);
+ }
+ #endif
diff --git a/meta/recipes-multimedia/libpng/libpng/04-CVE-2011-2692.patch b/meta/recipes-multimedia/libpng/libpng/04-CVE-2011-2692.patch
new file mode 100644
index 0000000..5a0f51e
--- /dev/null
+++ b/meta/recipes-multimedia/libpng/libpng/04-CVE-2011-2692.patch
@@ -0,0 +1,29 @@
+This patch is taken from upstream and is a fix for CVE CVE-2011-2962
+
+Description: fix denial of service and possible arbitrary code
+ execution via invalid sCAL chunks
+Origin: upstream, http://libpng.git.sourceforge.net/git/gitweb.cgi?p=libpng/libpng;a=commit;h=61a2d8a2a7b03023e63eae9a3e64607aaaa6d339
+
+Upstream-Status: Backport
+
+Signed-off-by: Joshua Lock <josh@linux.intel.com>
+
+Index: libpng-1.2.44/pngrutil.c
+===================================================================
+--- libpng-1.2.44.orig/pngrutil.c	2011-07-26 08:19:22.619498085 -0400
++++ libpng-1.2.44/pngrutil.c	2011-07-26 08:19:26.909498086 -0400
+@@ -1812,6 +1812,14 @@
+       return;
+    }
+ 
++   /* Need unit type, width, \0, height: minimum 4 bytes */
++   else if (length < 4)
++   {
++      png_warning(png_ptr, "sCAL chunk too short");
++      png_crc_finish(png_ptr, length);
++      return;
++   }
++
+    png_debug1(2, "Allocating and reading sCAL chunk data (%lu bytes)",
+       length + 1);
+    png_ptr->chunkdata = (png_charp)png_malloc_warn(png_ptr, length + 1);
diff --git a/meta/recipes-multimedia/libpng/libpng_1.2.44.bb b/meta/recipes-multimedia/libpng/libpng_1.2.44.bb
index 4a8d5c3..58c20f0 100644
--- a/meta/recipes-multimedia/libpng/libpng_1.2.44.bb
+++ b/meta/recipes-multimedia/libpng/libpng_1.2.44.bb
@@ -6,9 +6,12 @@ LICENSE = "libpng"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=a294a2bb08b7f25558119edbfd6b2e92 \
                     file://png.h;startline=172;endline=261;md5=3253923f0093658f470e52a06ddcf4e7"
 DEPENDS = "zlib"
-PR = "r0"
+PR = "r1"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/libpng/libpng-${PV}.tar.bz2"
+SRC_URI = "${SOURCEFORGE_MIRROR}/libpng/libpng-${PV}.tar.bz2 \
+           file://02-CVE-2011-2501.patch \
+           file://03-CVE-2011-2690.patch \
+           file://04-CVE-2011-2692.patch"
 
 SRC_URI[md5sum] = "e3ac7879d62ad166a6f0c7441390d12b"
 SRC_URI[sha256sum] = "b9ab20f1c2c3bf6c4448fd9bd8a4a8905b918114d5fada56c97bb758a17b7215"
-- 
1.7.7


