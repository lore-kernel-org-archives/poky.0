Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 303ED4C8106A
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:44:41 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D8FE930532
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:44:36 -0500 (EST)
Message-Id: <b8591c49a8c62e84634c96c33e24a345ca6e62c1.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Thu, 16 Dec 2010 21:17:31 -0800
Date: Wed, 05 Jan 2011 13:44:33 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D8FE930532.EFEEC
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/8] pax-utils: upgrade to version 2.2.2
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
X-List-Received-Date: Wed, 05 Jan 2011 21:44:41 -0000

* Upgrade to latest upstream release
* Minor cosmetic recipe changes

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |   19 ------------------
 meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb |   21 ++++++++++++++++++++
 2 files changed, 21 insertions(+), 19 deletions(-)
 delete mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
 create mode 100644 meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb

diff --git a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb b/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
deleted file mode 100644
index f19934c..0000000
--- a/meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-SUMMARY = "Security-focused ELF files checking tool"
-DESCRIPTION = "This is a small set of various PaX aware and related utilities for ELF binaries. It can check ELF \
-binary files and running processes for issues that might be relevant when using ELF binaries along with PaX, \
-such as non-PIC code or executable stack and heap."
-HOMEPAGE    = "http://www.gentoo.org/proj/en/hardened/pax-utils.xml"
-LICENSE     = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a"
-SRC_URI     = "http://gentoo.osuosl.org/distfiles/pax-utils-${PV}.tar.bz2"
-
-SRC_URI[md5sum] = "2bf53234580e02294453a40c864f5871"
-SRC_URI[sha256sum] = "6a5beefb686e425eb6829bc716d2b32b64c2e854287c212c9853bc2beb705c3a"
-
-PR = "r0"
-
-do_install() {
-    oe_runmake PREFIX=${D}${prefix} DESTDIR=${D} install
-}
-
-BBCLASSEXTEND = "native"
diff --git a/meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb b/meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb
new file mode 100644
index 0000000..6bb33e7
--- /dev/null
+++ b/meta/recipes-devtools/pax-utils/pax-utils_0.2.2.bb
@@ -0,0 +1,21 @@
+SUMMARY = "Security-focused ELF files checking tool"
+DESCRIPTION = "This is a small set of various PaX aware and related \
+utilities for ELF binaries. It can check ELF binary files and running \
+processes for issues that might be relevant when using ELF binaries \
+along with PaX, such as non-PIC code or executable stack and heap."
+HOMEPAGE = "http://www.gentoo.org/proj/en/hardened/pax-utils.xml"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a"
+
+SRC_URI = "http://gentoo.osuosl.org/distfiles/pax-utils-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "93a2e993ec7a83627c39ddf92988e191"
+SRC_URI[sha256sum] = "eac86abe7871ee12452d221c1e7c21acb9ba78ba2cba1daa587d3c93c77acd07"
+
+PR = "r0"
+
+do_install() {
+    oe_runmake PREFIX=${D}${prefix} DESTDIR=${D} install
+}
+
+BBCLASSEXTEND = "native"
-- 
1.7.1


