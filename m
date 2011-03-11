Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 070744C80A8D
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:41:32 -0600 (CST)
Received: from localhost (unknown [67.232.160.146])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id AB3FF308C4
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:41:27 -0500 (EST)
Message-Id: <ea094c8059a319ec2719941579341e3844717c9e.1299807513.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299807513.git.scott.a.garman@intel.com>
References: <cover.1299807513.git.scott.a.garman@intel.com>
Old-Date: Thu, 10 Mar 2011 16:22:33 -0800
Date: Thu, 10 Mar 2011 17:41:24 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: AB3FF308C4.7C273
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 6/7] poky-image-lsb: add ssh-server to IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Mar 2011 01:41:32 -0000

From: Scott Garman <scott.a.garman@intel.com>

And set the default IMAGE_SSH_PROVIDER to openssh.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/images/poky-image-lsb-dev.bb |    4 +++-
 meta/recipes-extended/images/poky-image-lsb-sdk.bb |    4 +++-
 meta/recipes-extended/images/poky-image-lsb.bb     |    4 +++-
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-extended/images/poky-image-lsb-dev.bb b/meta/recipes-extended/images/poky-image-lsb-dev.bb
index d490ee5..0c73ff3 100644
--- a/meta/recipes-extended/images/poky-image-lsb-dev.bb
+++ b/meta/recipes-extended/images/poky-image-lsb-dev.bb
@@ -1,4 +1,6 @@
-IMAGE_FEATURES += "apps-console-core dev-pkgs "
+IMAGE_SSH_PROVIDER = "openssh"
+
+IMAGE_FEATURES += "apps-console-core dev-pkgs ssh-server"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
diff --git a/meta/recipes-extended/images/poky-image-lsb-sdk.bb b/meta/recipes-extended/images/poky-image-lsb-sdk.bb
index 184b5d7..e4634b6 100644
--- a/meta/recipes-extended/images/poky-image-lsb-sdk.bb
+++ b/meta/recipes-extended/images/poky-image-lsb-sdk.bb
@@ -1,4 +1,6 @@
-IMAGE_FEATURES += "apps-console-core tools-debug tools-profile tools-sdk dev-pkgs"
+IMAGE_SSH_PROVIDER = "openssh"
+
+IMAGE_FEATURES += "apps-console-core tools-debug tools-profile tools-sdk dev-pkgs ssh-server"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
diff --git a/meta/recipes-extended/images/poky-image-lsb.bb b/meta/recipes-extended/images/poky-image-lsb.bb
index 8424d91..4504bb7 100644
--- a/meta/recipes-extended/images/poky-image-lsb.bb
+++ b/meta/recipes-extended/images/poky-image-lsb.bb
@@ -1,4 +1,6 @@
-IMAGE_FEATURES += "apps-console-core "
+IMAGE_SSH_PROVIDER = "openssh"
+
+IMAGE_FEATURES += "apps-console-core ssh-server"
 
 IMAGE_INSTALL = "\
     ${POKY_BASE_INSTALL} \
-- 
1.7.1


