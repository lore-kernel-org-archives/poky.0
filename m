Return-Path: <constantinx.musca@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75AF5E0070F
	for <poky@yoctoproject.org>; Thu, 21 Feb 2013 05:48:58 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Feb 2013 05:48:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,709,1355126400"; d="scan'208";a="204891026"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.152])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Feb 2013 05:48:56 -0800
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Thu, 21 Feb 2013 15:50:00 +0200
Message-Id: <1361454600-13046-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] meta-skeleton: Add example multilib usages
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Feb 2013 13:48:58 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-skeleton/conf/multilib-example.conf                    | 13 +++++++++++++
 meta-skeleton/conf/multilib-example2.conf                   | 13 +++++++++++++
 .../recipes-multilib/images/core-image-multilib-example.bb  | 13 +++++++++++++
 3 files changed, 39 insertions(+)
 create mode 100644 meta-skeleton/conf/multilib-example.conf
 create mode 100644 meta-skeleton/conf/multilib-example2.conf
 create mode 100644 meta-skeleton/recipes-multilib/images/core-image-multilib-example.bb

diff --git a/meta-skeleton/conf/multilib-example.conf b/meta-skeleton/conf/multilib-example.conf
new file mode 100644
index 0000000..da6da7f
--- /dev/null
+++ b/meta-skeleton/conf/multilib-example.conf
@@ -0,0 +1,13 @@
+#
+# Sample multilib configuration which the user can either add in local.conf
+# or specific in an configuration file like this, then require it.
+#
+# This configuration specifies an x86 64 bit machine as the main machine
+# type and then adds a multilib in the "lib32" directory where those
+# libraries are compiled with the "x86" tune.
+#
+
+MACHINE = "qemux86-64"
+require conf/multilib.conf
+MULTILIBS = "multilib:lib32"
+DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
diff --git a/meta-skeleton/conf/multilib-example2.conf b/meta-skeleton/conf/multilib-example2.conf
new file mode 100644
index 0000000..2596f61
--- /dev/null
+++ b/meta-skeleton/conf/multilib-example2.conf
@@ -0,0 +1,13 @@
+#
+# Sample multilib configuration which the user can either add in local.conf
+# or specific in an configuration file like this, then require it.
+#
+# This configuration specifies an x86 64 bit machine as the main machine
+# type and then adds a multilib in the "libx32" directory where those
+# libraries are compiled with the "x86-64-x32" tune.
+#
+
+MACHINE = "qemux86-64"
+require conf/multilib.conf
+MULTILIBS = "multilib:libx32"
+DEFAULTTUNE_virtclass-multilib-libx32 = "x86-64-x32"
diff --git a/meta-skeleton/recipes-multilib/images/core-image-multilib-example.bb b/meta-skeleton/recipes-multilib/images/core-image-multilib-example.bb
new file mode 100644
index 0000000..7703731
--- /dev/null
+++ b/meta-skeleton/recipes-multilib/images/core-image-multilib-example.bb
@@ -0,0 +1,13 @@
+#
+# An example of a multilib image
+#
+# This example includes a lib32 version of bash into an otherwise standard
+# sato image. It assumes a "lib32" multilib has been enabled in the user's
+# configuration (see the example conf files for examples of this.)
+#
+
+# First include a base image to base things off
+require recipes-core/images/core-image-sato.bb
+
+# Now add the multilib packages we want to install
+IMAGE_INSTALL += "lib32-bash"
-- 
1.7.11.7


