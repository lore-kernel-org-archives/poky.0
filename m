Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47758E013FE
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:19 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 0FD7030437
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:13 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:45 -0700
Message-Id: <d2c4771d3d2f1e188a566275e38fe6d92bc78548.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 0FD7030437.7A535
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 19/57] gcc: gcc-cross-canadian: use correct location for libraries for powerpc64
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:19 -0000

From: Matthew McClintock <msm@freescale.com>

This fixes the issue where gcc invokes the linker with an incorrect -L
library location and gives up because it can't find libraries. It was
looking in a /lib folder instead of /lib64

(From OE-Core rev: 1b428f0151a5b86332b501871bf4a925b43580a5)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-devtools/gcc/gcc-4.6.inc              |    2 +-
 .../recipes-devtools/gcc/gcc-cross-canadian_4.6.bb |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-4.6.inc b/meta/recipes-devtools/gcc/gcc-4.6.inc
index 32545eb..c71312e 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.6.inc
@@ -1,6 +1,6 @@
 require gcc-common.inc
 
-PR = "r26"
+PR = "r27"
 
 # Third digit in PV should be incremented after a minor release
 # happens from this branch on gcc e.g. currently its 4.6.0
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.6.bb b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.6.bb
index da3210f..74f983d 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.6.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.6.bb
@@ -9,8 +9,8 @@ DEPENDS += "gmp-nativesdk mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
 RDEPENDS_${PN} += "mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
 
 SYSTEMHEADERS = "/usr/include"
-SYSTEMLIBS = "/lib/"
-SYSTEMLIBS1 = "/usr/lib/"
+SYSTEMLIBS = "${target_base_libdir}/"
+SYSTEMLIBS1 = "${target_libdir}/"
 
 EXTRA_OECONF += "--disable-libunwind-exceptions --disable-libssp \
 		--disable-libgomp --disable-libmudflap \
-- 
1.7.9.5


