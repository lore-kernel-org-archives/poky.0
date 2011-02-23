Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id E80D64C80A7D
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 00:23:07 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 8496630513
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 01:23:02 -0500 (EST)
Message-Id: <29c3fbf7f8d149654a5c92562b7485dcf4f45333.1298441824.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298441824.git.scott.a.garman@intel.com>
References: <cover.1298441824.git.scott.a.garman@intel.com>
Old-Date: Tue, 22 Feb 2011 18:32:45 -0800
Date: Tue, 22 Feb 2011 22:22:59 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 8496630513.2A5D2
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/4] sstate.bbclass: add SSTATEPOSTINSTFUNCS
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
X-List-Received-Date: Wed, 23 Feb 2011 06:23:08 -0000

From: Scott Garman <scott.a.garman@intel.com>

When doing builds using sstate cache, there was no way to run
the equivalent of a pkg_postinst function. This is needed by
the SGML-related documentation recipes to properly update the
catalog files when new DTDs and stylesheets are installed.

SSTATEPOSTINSTFUNCS is a new variable you can set to function(s)
in your recipe to run after install is completed from sstate.

Thanks to Richard Purdie for suggesting this solution.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/sstate.bbclass |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 4f1bc39..33e5829 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -16,6 +16,8 @@ BB_HASHFILENAME = "${SSTATE_PKGNAME}"
 
 SSTATE_MANMACH ?= "${SSTATE_PKGARCH}"
 
+SSTATEPOSTINSTFUNCS ?= ""
+
 python () {
     if bb.data.inherits_class('native', d):
         bb.data.setVar('SSTATE_PKGARCH', bb.data.getVar('BUILD_ARCH', d), d)
@@ -129,6 +131,12 @@ def sstate_install(ss, d):
         f.write(di + "\n")
     f.close()
 
+    # This is used for running post-install functions for sstate packages
+    # which need to generate dynamic data. Various SGML-related recipes
+    # need this to update the super catalog correctly.
+    for postinst in (bb.data.getVar('SSTATEPOSTINSTFUNCS', d, True) or '').split():
+        bb.build.exec_func(postinst, d)
+
     for lock in locks:
         bb.utils.unlockfile(lock)
 
-- 
1.7.1


