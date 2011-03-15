Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 240664C80AAE
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:12:24 -0500 (CDT)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 502E5304EF
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:12:19 -0400 (EDT)
Message-Id: <a1b685657a145dc3e9be5991a93c36ca18902ad3.1300230459.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1300230459.git.scott.a.garman@intel.com>
References: <cover.1300230459.git.scott.a.garman@intel.com>
Old-Date: Sat, 12 Mar 2011 23:15:34 -0800
Date: Tue, 15 Mar 2011 16:12:16 -0700
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 502E5304EF.725AD
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/7] poky-image-lsb: add ssh-server-openssh to IMAGE_FEATURES
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
X-List-Received-Date: Tue, 15 Mar 2011 23:12:24 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/images/poky-image-lsb-dev.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb-sdk.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb.bb     |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-extended/images/poky-image-lsb-dev.bb b/meta/recipes-extended/images/poky-image-lsb-dev.bb
index d490ee5..578fbd0 100644
--- a/meta/recipes-extended/images/poky-image-lsb-dev.bb
+++ b/meta/recipes-extended/images/poky-image-lsb-dev.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core dev-pkgs "
+IMAGE_FEATURES += "apps-console-core dev-pkgs ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
diff --git a/meta/recipes-extended/images/poky-image-lsb-sdk.bb b/meta/recipes-extended/images/poky-image-lsb-sdk.bb
index 184b5d7..967bb02 100644
--- a/meta/recipes-extended/images/poky-image-lsb-sdk.bb
+++ b/meta/recipes-extended/images/poky-image-lsb-sdk.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core tools-debug tools-profile tools-sdk dev-pkgs"
+IMAGE_FEATURES += "apps-console-core tools-debug tools-profile tools-sdk dev-pkgs ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
diff --git a/meta/recipes-extended/images/poky-image-lsb.bb b/meta/recipes-extended/images/poky-image-lsb.bb
index 8424d91..33532ea 100644
--- a/meta/recipes-extended/images/poky-image-lsb.bb
+++ b/meta/recipes-extended/images/poky-image-lsb.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core "
+IMAGE_FEATURES += "apps-console-core ssh-server-openssh"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
-- 
1.7.1


