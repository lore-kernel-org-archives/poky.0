Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8F0AE013B2
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:37 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 9415F3042C
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:30 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:27 -0700
Message-Id: <96bdbf6a416c08edda0a987b2c7bb79d1f9c664d.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 9415F3042C.E38D9
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 01/57] xinetd: Update to 2.3.15
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:37 -0000

From: Saul Wold <sgw@linux.intel.com>

(From OE-Core rev: 17d7f2a9ee4c56bc697f05a8e703ddb02c262d99)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../xinetd/{xinetd_2.3.14.bb => xinetd_2.3.15.bb}  |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-extended/xinetd/{xinetd_2.3.14.bb => xinetd_2.3.15.bb} (90%)

diff --git a/meta/recipes-extended/xinetd/xinetd_2.3.14.bb b/meta/recipes-extended/xinetd/xinetd_2.3.15.bb
similarity index 90%
rename from meta/recipes-extended/xinetd/xinetd_2.3.14.bb
rename to meta/recipes-extended/xinetd/xinetd_2.3.15.bb
index 26ba78f..3d55e99 100644
--- a/meta/recipes-extended/xinetd/xinetd_2.3.14.bb
+++ b/meta/recipes-extended/xinetd/xinetd_2.3.15.bb
@@ -7,7 +7,7 @@ LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=8ad8615198542444f84d28a6cf226dd8"
 
 DEPENDS = ""
-PR ="r1"
+PR = "r0"
 
 SRC_URI = "http://www.xinetd.org/xinetd-${PV}.tar.gz \
       file://xinetd.init \
@@ -17,8 +17,8 @@ SRC_URI = "http://www.xinetd.org/xinetd-${PV}.tar.gz \
       file://xinetd-should-be-able-to-listen-on-IPv6-even-in-ine.patch \
       "
 
-SRC_URI[md5sum] = "567382d7972613090215c6c54f9b82d9"
-SRC_URI[sha256sum] = "760e0e617c609a0509ef63fc7e9580d2f1d88c6113bb6d63273de7de7cd0bc1f"
+SRC_URI[md5sum] = "77358478fd58efa6366accae99b8b04c"
+SRC_URI[sha256sum] = "bf4e060411c75605e4dcbdf2ac57c6bd9e1904470a2f91e01ba31b50a80a5be3"
 
 inherit autotools update-rc.d
 
-- 
1.7.9.5


