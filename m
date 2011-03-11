Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 556424C80AAA
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:21:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Mar 2011 18:21:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="611596560"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2011 18:21:01 -0800
Message-Id: <bf9a8b3a18b95a6225e2d2c9959a30601d681a83.1299809859.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299809859.git.sgw@linux.intel.com>
References: <cover.1299809859.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 16:22:33 -0800
Date: Thu, 10 Mar 2011 18:20:59 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 11/12] poky-image-lsb: add ssh-server to IMAGE_FEATURES
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
X-List-Received-Date: Fri, 11 Mar 2011 02:21:05 -0000

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
1.7.1.1


