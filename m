Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 258154C8110B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 10:33:05 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 27AD82FFC2
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 11:32:58 -0500 (EST)
Message-Id: <a8bce3db472fb89cd09ccb11a316632288d6bf20.1295886689.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295886689.git.scott.a.garman@intel.com>
References: <cover.1295886689.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Sun, 23 Jan 2011 17:42:37 -0800
Date: Mon, 24 Jan 2011  8:32:53 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 27AD82FFC2.450E2
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/2] sudo: upgrade to 1.7.4p6
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
X-List-Received-Date: Mon, 24 Jan 2011 16:33:05 -0000

Addresses CVE-2011-0010

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../sudo/{sudo_1.7.4p4.bb => sudo_1.7.4p6.bb}      |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-extended/sudo/{sudo_1.7.4p4.bb => sudo_1.7.4p6.bb} (52%)

diff --git a/meta/recipes-extended/sudo/sudo_1.7.4p4.bb b/meta/recipes-extended/sudo/sudo_1.7.4p6.bb
similarity index 52%
rename from meta/recipes-extended/sudo/sudo_1.7.4p4.bb
rename to meta/recipes-extended/sudo/sudo_1.7.4p6.bb
index ee81b65..edc9a0e 100644
--- a/meta/recipes-extended/sudo/sudo_1.7.4p4.bb
+++ b/meta/recipes-extended/sudo/sudo_1.7.4p6.bb
@@ -5,7 +5,7 @@ PR = "r0"
 SRC_URI = "http://ftp.sudo.ws/sudo/dist/sudo-${PV}.tar.gz \
            file://libtool.patch"
 
-SRC_URI[md5sum] = "55d9906535d70a1de347cd3d3550ee87"
-SRC_URI[sha256sum] = "38de3c3e08346b2b8dcb3cf7ed0813300d1a1d5696d0f338ea8a4ef232aacf97"
+SRC_URI[md5sum] = "1ae12d3d22e7ffedbf2db26f957676f0"
+SRC_URI[sha256sum] = "20091ef71018698c674c779f4b57178b2ecb4275fa34909b06219d2688ad14d5"
 
 EXTRA_OECONF += " --with-pam=no"
-- 
1.7.1


