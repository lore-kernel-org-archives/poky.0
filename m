Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E41E013B7
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:49 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 69B7D30439
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:44 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:58 -0700
Message-Id: <437872d235d3f2b384c40c5bb10221bd50114d7a.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 69B7D30439.30222
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 32/57] libtool: fixed parallel build related race
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:49 -0000

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

While building libtool, the libtool script itself will be regenerated
because OE modifies a dependency[1]. With -jX, this operation (-->
removal, creation of non-x file, 'chmod a+x') can happen at a time when
the script is going to be executed.  This can cause errors like:

| arm-linux-gnueabi-libtool: compile:  ccache arm-linux-gnueabi-gcc ...
| ...
| /bin/sh ./config.status libtool
| ...
| arm-linux-gnueabi-libtool: compile:  ccache arm-linux-gnueabi-gcc ...
| /bin/sh: ./arm-linux-gnueabi-libtool: Permission denied
| make[2]: *** [libltdl/libltdl_libltdl_la-lt__alloc.lo] Error 126

I am not sure whether the custom do_compile_prepend() is still needed.
For now only the issue above will be fixed by executing ./config.status
yet again.

[1] see 648290d5bf4d6ff50d3643bb7ad902dfc23aa702

(From OE-Core rev: e065c11b6066f8c1d37496b58dd853a684cd9136)

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-devtools/libtool/libtool-2.4.2.inc |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/libtool/libtool-2.4.2.inc b/meta/recipes-devtools/libtool/libtool-2.4.2.inc
index 084062a..c1ef7c4 100644
--- a/meta/recipes-devtools/libtool/libtool-2.4.2.inc
+++ b/meta/recipes-devtools/libtool/libtool-2.4.2.inc
@@ -8,7 +8,7 @@ LICENSE = "GPLv2 & LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
     file://libltdl/COPYING.LIB;md5=e3eda01d9815f8d24aae2dbd89b68b06"
 
-INC_PR = "r2"
+INC_PR = "r3"
 
 SRC_URI = "${GNU_MIRROR}/libtool/libtool-${PV}.tar.gz \
            file://trailingslash.patch \
@@ -27,6 +27,7 @@ do_compile_prepend () {
 	# Sometimes this file doesn't get rebuilt, force the issue
 	rm -f ${S}/libltdl/config/ltmain.sh
 	make libltdl/config/ltmain.sh
+	./config.status
 }
 
 inherit autotools
-- 
1.7.9.5


