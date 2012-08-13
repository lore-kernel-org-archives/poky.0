Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F40E013B7
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:43 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B289230426
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:37 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:55 -0700
Message-Id: <5203c462ab95c05abe555f1f59504af63e05c32d.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B289230426.81A0F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 29/57] gcc-package-runtime.inc: Fix QA warning
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:43 -0000

From: Matthew McClintock <msm@freescale.com>

> ERROR: QA Issue: gcc-runtime: Files/directories were installed but not shipped
>   /usr/lib/libgomp.so.1.0.0
>   /usr/lib/libgomp.so.1

(From OE-Core rev: fee3def2ca49e3349758d9cd9a9cf5645f03cf18)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-devtools/gcc/gcc-package-runtime.inc |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/gcc/gcc-package-runtime.inc b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
index 9962615..eeec957 100644
--- a/meta/recipes-devtools/gcc/gcc-package-runtime.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-runtime.inc
@@ -64,8 +64,9 @@ FILES_libmudflap-dev = "\
   ${libdir}/libmudflap*.a \
   ${libdir}/libmudflap*.la"
 
+FILES_libgomp = "${libdir}/libgomp*${SOLIBS}"
 FILES_libgomp-dev = "\
-  ${libdir}/libgomp*.so \
+  ${libdir}/libgomp*${SOLIBSDEV} \
   ${libdir}/libgomp*.la \
   ${libdir}/libgomp.spec \
   ${libdir}/gcc/${TARGET_SYS}/${BINV}/include/omp.h \
-- 
1.7.9.5


