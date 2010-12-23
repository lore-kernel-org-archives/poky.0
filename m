Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AC6E4C811E2
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 06:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="871314063"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2010 06:27:09 -0800
Message-Id: <f5e0dddd7063d6a92bb7de678b9bc549a6079351.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Old-Date: Wed, 22 Dec 2010 15:50:12 -0800
Date: Thu, 23 Dec 2010  6:27:09 -0800
To: poky@yoctoproject.org
Subject: [PATCH 10/28] insane.bbclass: make LIC_FILES_CHKSUM failures report errors
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:10 -0000

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/classes/insane.bbclass |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index b06d021..225530a 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -348,7 +348,7 @@ def package_qa_check_license(workdir, d):
     if not lic_files:
         # just throw a warning now. Once licensing data in entered for enough of the recipes,
         # this will be converted into error and False will be returned.
-        bb.warn(pn + ": Recipe file does not have license file information (LIC_FILES_CHKSUM)")
+        bb.error(pn + ": Recipe file does not have license file information (LIC_FILES_CHKSUM)")
         return True
 
     srcdir = bb.data.getVar('S', d, True)
@@ -394,8 +394,8 @@ def package_qa_check_license(workdir, d):
             bb.note ("md5 checksum matched for ", url)
         else:
             bb.error ("md5 data is not matching for ", url)
-            bb.note ("The new md5 checksum is ", md5chksum)
-            bb.note ("Check if the license information has changed, and if it has update the .bb file with correct license")
+            bb.error ("The new md5 checksum is ", md5chksum)
+            bb.error ("Check if the license information has changed, and if it has update the .bb file with correct license")
             sane = False
 
     return sane
@@ -605,5 +605,5 @@ Rerun configure task after fixing this. The path was '%s'""" % root)
 Missing inherit gettext?""" % config)
 
     if not package_qa_check_license(workdir, d):
-        bb.fatal("Licensing warning: LIC_FILES_CHKSUM does not match, please fix")
+        bb.error("Licensing warning: LIC_FILES_CHKSUM does not match, please fix")
 }
-- 
1.7.2.3


