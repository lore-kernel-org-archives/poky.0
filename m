Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DFD2E006D9
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:08 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 361152FD1D
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:03 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:11 -0700
Message-Id: <e948e4cda81cc8a6bc673bc47482df76118f2f8a.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 361152FD1D.C9EB4
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 21/31] gnupg: add libusb to DEPENDS
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:08 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

gnupg apparently depends on libusb:

| error: Failed dependencies:
| 	 libusb-0.1-4 >= 0.1.3 is needed by gnupg-2.0.18-r1.core2

So add libusb to gnupg DEPENDS.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Resolved merge conflicts when importing from oe-core master.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-support/gnupg/gnupg_2.0.18.bb |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/gnupg/gnupg_2.0.18.bb b/meta/recipes-support/gnupg/gnupg_2.0.18.bb
index 3085494..7dfd908 100644
--- a/meta/recipes-support/gnupg/gnupg_2.0.18.bb
+++ b/meta/recipes-support/gnupg/gnupg_2.0.18.bb
@@ -4,8 +4,8 @@ LICENSE = "GPLv3 & LGPLv3"
 LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949 \
                     file://COPYING.LIB;md5=6a6a8e020838b23406c81b19c1d46df6"
 
-DEPENDS = "pth libassuan libksba zlib bzip2 readline libgcrypt"
-PR = "r1"
+DEPENDS = "pth libassuan libksba zlib bzip2 readline libgcrypt libusb"
+PR = "r2"
 
 inherit autotools gettext
 
-- 
1.7.9.5


