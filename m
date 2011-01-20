Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2D694C811F6
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 18:39:46 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B6254304F2
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 19:39:42 -0500 (EST)
Message-Id: <33ebce5c8d8b32ca1ebe87818a48b59c9efbfdec.1295483757.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295483757.git.scott.a.garman@intel.com>
References: <cover.1295483757.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Wed, 22 Dec 2010 12:59:51 -0800
Date: Wed, 19 Jan 2011 16:39:35 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B6254304F2.4575A
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 12/12] poky-default.inc: bump binutils preferred version to 2.21
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
X-List-Received-Date: Thu, 20 Jan 2011 00:39:47 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/conf/distro/include/poky-default.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default.inc b/meta/conf/distro/include/poky-default.inc
index e5dd647..ef9f5cf 100644
--- a/meta/conf/distro/include/poky-default.inc
+++ b/meta/conf/distro/include/poky-default.inc
@@ -17,7 +17,7 @@ PREFERRED_PROVIDER_virtual/${SDK_PREFIX}libc-for-gcc-nativesdk ?= "${POKYLIBC}-n
 
 GCCVERSION ?= "4.5.1"
 SDKGCCVERSION ?= "4.5.1"
-BINUVERSION ?= "2.20.1"
+BINUVERSION ?= "2.21"
 GLIBCVERSION ?= "2.10.1"
 LINUXLIBCVERSION ?= "2.6.36"
 
-- 
1.7.1


