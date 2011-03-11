Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id C29204C80AB0
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:00:00 -0600 (CST)
Received: from localhost (unknown [209.216.169.162])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A1171308C5
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:59:56 -0500 (EST)
Message-Id: <9e6bf85acfd155e872b26457faabcb4868ceb4d2.1299804498.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299804498.git.scott.a.garman@intel.com>
References: <cover.1299804498.git.scott.a.garman@intel.com>
Old-Date: Thu, 10 Mar 2011 16:22:33 -0800
Date: Thu, 10 Mar 2011 16:59:53 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A1171308C5.BD0DA
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/6] poky-image-lsb: add ssh-server to IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Mar 2011 01:00:00 -0000

From: Scott Garman <scott.a.garman@intel.com>

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/images/poky-image-lsb-dev.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb-sdk.bb |    2 +-
 meta/recipes-extended/images/poky-image-lsb.bb     |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-extended/images/poky-image-lsb-dev.bb b/meta/recipes-extended/images/poky-image-lsb-dev.bb
index d490ee5..35b80a3 100644
--- a/meta/recipes-extended/images/poky-image-lsb-dev.bb
+++ b/meta/recipes-extended/images/poky-image-lsb-dev.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core dev-pkgs "
+IMAGE_FEATURES += "apps-console-core dev-pkgs ssh-server"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
diff --git a/meta/recipes-extended/images/poky-image-lsb-sdk.bb b/meta/recipes-extended/images/poky-image-lsb-sdk.bb
index 184b5d7..0b1e1e9 100644
--- a/meta/recipes-extended/images/poky-image-lsb-sdk.bb
+++ b/meta/recipes-extended/images/poky-image-lsb-sdk.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core tools-debug tools-profile tools-sdk dev-pkgs"
+IMAGE_FEATURES += "apps-console-core tools-debug tools-profile tools-sdk dev-pkgs ssh-server"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
diff --git a/meta/recipes-extended/images/poky-image-lsb.bb b/meta/recipes-extended/images/poky-image-lsb.bb
index 8424d91..096fed4 100644
--- a/meta/recipes-extended/images/poky-image-lsb.bb
+++ b/meta/recipes-extended/images/poky-image-lsb.bb
@@ -1,4 +1,4 @@
-IMAGE_FEATURES += "apps-console-core "
+IMAGE_FEATURES += "apps-console-core ssh-server"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
-- 
1.7.1


