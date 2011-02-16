Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9A844C80A1D
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 22:33:22 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id D8849308FB
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:33:08 -0500 (EST)
Message-Id: <5cfc59a5718f5764003d31b251a2dfd2e25a07ec.1297830466.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297830466.git.scott.a.garman@intel.com>
References: <cover.1297830466.git.scott.a.garman@intel.com>
Old-Date: Fri, 4 Feb 2011 12:22:55 -0800
Date: Tue, 15 Feb 2011 20:33:01 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: D8849308FB.B6F12
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/5] sgml-common-native: fix license info and checksum fields
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
X-List-Received-Date: Wed, 16 Feb 2011 04:33:23 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../sgml-common/sgml-common-native_0.6.3.bb        |   10 ++++------
 1 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb b/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
index 7e9b923..2c8d874 100644
--- a/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
+++ b/meta/recipes-devtools/sgml-common/sgml-common-native_0.6.3.bb
@@ -7,12 +7,10 @@ add entries to (or remove entries from) centralized catalogs \
 whose entries are pointers to SGML open catalogs, \
 as defined by OASIS."
 HOMEPAGE = "http://sources.redhat.com/docbook-tools/"
-LICENSE = "GPLv2"
-# The COPYING file sgml-common ships with is just a symlink to
-# /usr/share/automake/COPYING, which means we can't verify it
-# using our normal means. :( Hash the README file instead as
-# LIC_FILES_CHKSUM is still required.
-LIC_FILES_CHKSUM = "file://README;md5=197bd940bf13548ac2198e4f77d3da92"
+LICENSE = "GPLv2+"
+# See the comments in license.patch when upgrading this recipe.
+# This is inteded to be a temporary workaround.
+LIC_FILES_CHKSUM = "file://LICENSE-GPLv2;md5=ab8a50abe86dfc859e148baae043c89b"
 SECTION = "base"
 
 PR = "r0"
-- 
1.7.1


