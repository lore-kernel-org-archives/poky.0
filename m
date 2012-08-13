Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50DB6E00718
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:29 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4A50030438
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:21 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:48 -0700
Message-Id: <fa540dce2d8b6101bb68439989a340ed2a4c188b.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4A50030438.1BF4D
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 22/57] lsof: define linux C library type when using eglibc
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:29 -0000

From: Ting Liu <b28495@freescale.com>

lsof tries to compile a temp c source file and execute the binary to
determine linux C library type (file Configure, line 2689-2717).
It is inpracticable for cross-compilation and may have build issue on
some distros since it depends on host settings.

Fix below error when building for 64bit target on 64bit host:
[...]
| dsock.c:481:44: error: 'TCP_LISTEN' undeclared (first use in this function)
| dsock.c:482:45: error: 'TCP_CLOSING' undeclared (first use in this function)
[...]
| make: *** [dsock.o] Error 1

The actual issue exists in do_configure:
[...]
Testing C library type with cc ... done
Cannot determine C library type; assuming it is not glibc.

Which is in turn caused by missing 'gnu/stubs-32.h" when compiling
the temp c source file on host:
[...]
fatal error: gnu/stubs-32.h: No such file or directory compilation terminated.

file gnu/stubs-32.h is provided by 32bit glibc.

(From OE-Core rev: fbf22dfe1a0dca3fc7ac56e4fd274c0145efbc70)

Signed-off-by: Ting Liu <b28495@freescale.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-extended/lsof/lsof_4.85.bb |    7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-extended/lsof/lsof_4.85.bb b/meta/recipes-extended/lsof/lsof_4.85.bb
index 8f25e24..d4091d1 100644
--- a/meta/recipes-extended/lsof/lsof_4.85.bb
+++ b/meta/recipes-extended/lsof/lsof_4.85.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Lsof is a Unix-specific diagnostic tool. \
 Its name stands for LiSt Open Files, and it does just that."
 SECTION = "devel"
 LICENSE = "BSD"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_${PV}.tar.bz2"
 
@@ -29,6 +29,11 @@ LSOF_OS_libc-glibc = "linux"
 export LSOF_INCLUDE = "${STAGING_INCDIR}"
 
 do_configure () {
+        if [ "x${EGLIBCVERSION}" != "x" ];then
+                LINUX_CLIB=`echo ${EGLIBCVERSION} |sed -e 's,\.,,g'`
+                LINUX_CLIB="-DGLIBCV=${LINUX_CLIB}"
+                export LINUX_CLIB
+        fi
 	yes | ./Configure ${LSOF_OS}
 }
 
-- 
1.7.9.5


