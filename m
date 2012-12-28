Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D569E014BA
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:19 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id C7F5D2FEF2
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:45:11 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:21 -0800
Message-Id: <3184fda7f1d57c94698f2dc16d8c646662e4dfff.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: C7F5D2FEF2.28436
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 15/23] psplash: new patch to fix segfault
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:19 -0000

This fixes a segmentation fault when passing -a without
an argument.

Fixes [YOCTO #2903]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../files/psplash_fix_bad_arg_segfault.patch       |   22 ++++++++++++++++++++
 meta/recipes-core/psplash/psplash_git.bb           |    3 ++-
 2 files changed, 24 insertions(+), 1 deletion(-)
 create mode 100644 meta/recipes-core/psplash/files/psplash_fix_bad_arg_segfault.patch

diff --git a/meta/recipes-core/psplash/files/psplash_fix_bad_arg_segfault.patch b/meta/recipes-core/psplash/files/psplash_fix_bad_arg_segfault.patch
new file mode 100644
index 0000000..f69c8a2
--- /dev/null
+++ b/meta/recipes-core/psplash/files/psplash_fix_bad_arg_segfault.patch
@@ -0,0 +1,22 @@
+Fix segmentation fault when passing -a without angle value.
+
+When psplash -a is called instead of psplash -a<angle value>, it will
+cause a segmentation fault by calling an out of bound argv[]. 
+
+Upstream-Status: Accepted
+Needed for denzil since we're not upgrading the recipe.
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+
+diff -urN git.orig/psplash.c git/psplash.c
+--- git.orig/psplash.c	2012-12-22 21:28:05.830631789 -0800
++++ git/psplash.c	2012-12-22 21:29:54.962633330 -0800
+@@ -219,7 +219,7 @@
+ 
+       if (!strcmp(argv[i],"-a") || !strcmp(argv[i],"--angle"))
+         {
+-	  if (++i > argc) goto fail;
++	  if (++i >= argc) goto fail;
+ 	  angle = atoi(argv[i]);
+ 	  continue;
+ 	}
diff --git a/meta/recipes-core/psplash/psplash_git.bb b/meta/recipes-core/psplash/psplash_git.bb
index f93afea..56a953b 100644
--- a/meta/recipes-core/psplash/psplash_git.bb
+++ b/meta/recipes-core/psplash/psplash_git.bb
@@ -7,10 +7,11 @@ LIC_FILES_CHKSUM = "file://psplash.h;beginline=1;endline=16;md5=840fb2356b10a85b
 
 SRCREV = "e05374aae945bcfc6d962ed0d7b2774b77987e1d"
 PV = "0.1+git${SRCPV}"
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "git://git.yoctoproject.org/${BPN};protocol=git \
            file://psplash-init \
+           file://psplash_fix_bad_arg_segfault.patch \
            ${SPLASH_IMAGES}"
 
 SPLASH_IMAGES = "file://psplash-poky-img.h;outsuffix=default"
-- 
1.7.9.5


