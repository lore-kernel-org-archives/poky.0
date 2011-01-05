Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29DC94C811EB
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:44:55 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id B2E8A30534
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:44:49 -0500 (EST)
Message-Id: <1df6d51bcd3bfa3080018e8676fedf3dace778da.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 4 Jan 2011 14:37:23 -0800
Date: Wed, 05 Jan 2011 13:44:47 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: B2E8A30534.F19C3
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 5/8] libgdbus_git: metadata fixes and minor formatting changes
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
X-List-Received-Date: Wed, 05 Jan 2011 21:44:55 -0000

* Added DESCRIPTION, SECTION, PRIORITY, and PR fields
* Updated SUMMARY and HOMEPAGE fields to reflect more accurate info

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-support/libgdbus/libgdbus_git.bb |   22 ++++++++++++++--------
 1 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/meta/recipes-support/libgdbus/libgdbus_git.bb b/meta/recipes-support/libgdbus/libgdbus_git.bb
index c465023..f303507 100644
--- a/meta/recipes-support/libgdbus/libgdbus_git.bb
+++ b/meta/recipes-support/libgdbus/libgdbus_git.bb
@@ -1,12 +1,18 @@
-HOMEPAGE = "http://www.moblin.org/projects/projects_connman.php"
-SUMMARY  = "Moblin Glib D-Bus integration"
-LICENSE  = "GPLv2&LGPLv2.1"
+SUMMARY = "Library for simple D-Bus integration with GLib"
+DESCRIPTION = "Library for simple D-Bus integration with GLib"
+HOMEPAGE = "http://www.bluez.org"
+SECTION = "libs"
+PRIORITY = "optional"
+LICENSE = "GPLv2&LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e \
-		    file://COPYING.LIB;md5=fb504b67c50331fc78734fed90fb0e09"
-DEPENDS  = "glib-2.0 dbus"
-PV       = "0.0+git${SRCREV}"
-S        = "${WORKDIR}/git"
+                    file://COPYING.LIB;md5=fb504b67c50331fc78734fed90fb0e09"
 
-SRC_URI  = "git://git.kernel.org/pub/scm/bluetooth/libgdbus.git;protocol=git"
+DEPENDS = "glib-2.0 dbus"
+PV = "0.0+git${SRCREV}"
+PR = "r0"
+
+SRC_URI = "git://git.kernel.org/pub/scm/bluetooth/libgdbus.git;protocol=git"
+
+S = "${WORKDIR}/git"
 
 inherit autotools pkgconfig
-- 
1.7.1


