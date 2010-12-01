Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 697BE4C81065
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 20:58:08 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Dec 2010 18:58:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="356438232"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by azsmga001.ch.intel.com with ESMTP; 02 Dec 2010 18:57:45 -0800
Message-Id: <4394b81b10ca497afacfafc6b707565efa1ecb58.1291344572.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1291344572.git.nitin.a.kamble@intel.com>
References: <cover.1291344572.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Wed, 1 Dec 2010 10:48:20 -0800
To: poky@yoctoproject.org
Subject: [PATCH 4/6] git: upgrade from 1.7.2.1 to 1.7.3.2
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
X-List-Received-Date: Fri, 03 Dec 2010 02:58:08 -0000

And also updated the src_uri checksums.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/git/git_1.7.2.1.bb |    8 --------
 meta/recipes-devtools/git/git_1.7.3.2.bb |   10 ++++++++++
 2 files changed, 10 insertions(+), 8 deletions(-)
 delete mode 100644 meta/recipes-devtools/git/git_1.7.2.1.bb
 create mode 100644 meta/recipes-devtools/git/git_1.7.3.2.bb

diff --git a/meta/recipes-devtools/git/git_1.7.2.1.bb b/meta/recipes-devtools/git/git_1.7.2.1.bb
deleted file mode 100644
index c8aad2e..0000000
--- a/meta/recipes-devtools/git/git_1.7.2.1.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require git.inc
-
-PR = "r3"
-
-EXTRA_OECONF += "ac_cv_snprintf_returns_bogus=no ac_cv_c_c99_format=yes \
-                 ac_cv_fread_reads_directories=${ac_cv_fread_reads_directories=yes} \
-                 "
-
diff --git a/meta/recipes-devtools/git/git_1.7.3.2.bb b/meta/recipes-devtools/git/git_1.7.3.2.bb
new file mode 100644
index 0000000..1f7f937
--- /dev/null
+++ b/meta/recipes-devtools/git/git_1.7.3.2.bb
@@ -0,0 +1,10 @@
+require git.inc
+
+PR = "r0"
+
+EXTRA_OECONF += "ac_cv_snprintf_returns_bogus=no ac_cv_c_c99_format=yes \
+                 ac_cv_fread_reads_directories=${ac_cv_fread_reads_directories=yes} \
+                 "
+
+SRC_URI[md5sum] = "902f7f07a789fedc0d2ac03656b85969"
+SRC_URI[sha256sum] = "bc4cf6bc7c116056050ef43b051691828d7101327b23311d424b02eaee553e71"
-- 
1.7.2.2


