Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 989744C80FA7
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 17:29:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 15:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,213,1288594800"; d="scan'208";a="627844803"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.73])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 15:29:10 -0800
Message-Id: <d0e9bf11695cdb77a6736a050d8054b2ab788869.1290036267.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1290036267.git.scott.a.garman@intel.com>
References: <cover.1290036267.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Date: Wed, 17 Nov 2010 13:44:15 -0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/2] tar: upgrade to version 1.25
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
X-List-Received-Date: Wed, 17 Nov 2010 23:29:10 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-extended/tar/tar_1.23.bb |    9 ---------
 meta/recipes-extended/tar/tar_1.25.bb |    9 +++++++++
 2 files changed, 9 insertions(+), 9 deletions(-)
 delete mode 100644 meta/recipes-extended/tar/tar_1.23.bb
 create mode 100644 meta/recipes-extended/tar/tar_1.25.bb

diff --git a/meta/recipes-extended/tar/tar_1.23.bb b/meta/recipes-extended/tar/tar_1.23.bb
deleted file mode 100644
index 093c0b4..0000000
--- a/meta/recipes-extended/tar/tar_1.23.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require tar.inc
-
-LICENSE = "GPLv3"
-LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949"
-
-PR = "r0"
-
-SRC_URI[md5sum] = "41e2ca4b924ec7860e51b43ad06cdb7e"
-SRC_URI[sha256sum] = "c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36"
diff --git a/meta/recipes-extended/tar/tar_1.25.bb b/meta/recipes-extended/tar/tar_1.25.bb
new file mode 100644
index 0000000..cdb6f54
--- /dev/null
+++ b/meta/recipes-extended/tar/tar_1.25.bb
@@ -0,0 +1,9 @@
+require tar.inc
+
+LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+PR = "r0"
+
+SRC_URI[md5sum] = "6e497f861c77bbba2f7da4e10270995b"
+SRC_URI[sha256sum] = "f3f6ce41b8e0f327abd05c95990f113ddafbae131e10f79a99728ed46458494b"
-- 
1.7.3.2


