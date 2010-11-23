Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A65E4C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 20:57:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 18:57:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="580102208"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 18:57:44 -0800
Message-Id: <3316e0d8e41c795648a258819deb04114476df5d.1291344572.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1291344572.git.nitin.a.kamble@intel.com>
References: <cover.1291344572.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Tue, 23 Nov 2010 09:55:04 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/6] m4: upgrade from 1.4.13 to 1.4.15
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
X-List-Received-Date: Fri, 03 Dec 2010 02:57:45 -0000

And update recipe checksums

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../{m4-native_1.4.13.bb => m4-native_1.4.15.bb}   |    0
 meta/recipes-devtools/m4/m4_1.4.13.bb              |   10 ----------
 meta/recipes-devtools/m4/m4_1.4.15.bb              |   15 +++++++++++++++
 3 files changed, 15 insertions(+), 10 deletions(-)
 rename meta/recipes-devtools/m4/{m4-native_1.4.13.bb => m4-native_1.4.15.bb} (100%)
 delete mode 100644 meta/recipes-devtools/m4/m4_1.4.13.bb
 create mode 100644 meta/recipes-devtools/m4/m4_1.4.15.bb

diff --git a/meta/recipes-devtools/m4/m4-native_1.4.13.bb b/meta/recipes-devtools/m4/m4-native_1.4.15.bb
similarity index 100%
rename from meta/recipes-devtools/m4/m4-native_1.4.13.bb
rename to meta/recipes-devtools/m4/m4-native_1.4.15.bb
diff --git a/meta/recipes-devtools/m4/m4_1.4.13.bb b/meta/recipes-devtools/m4/m4_1.4.13.bb
deleted file mode 100644
index 339c33c..0000000
--- a/meta/recipes-devtools/m4/m4_1.4.13.bb
+++ /dev/null
@@ -1,10 +0,0 @@
-DESCRIPTION = "GNU m4 is an implementation of the traditional Unix macro processor."
-LICENSE = "GPLv3"
-LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
-SRC_URI = "${GNU_MIRROR}/m4/m4-${PV}.tar.gz \
-           file://ac_config_links.patch;patch=1"
-PR = "r2"
-
-inherit autotools
-
-EXTRA_OEMAKE += "'infodir=${infodir}'"
diff --git a/meta/recipes-devtools/m4/m4_1.4.15.bb b/meta/recipes-devtools/m4/m4_1.4.15.bb
new file mode 100644
index 0000000..908bc10
--- /dev/null
+++ b/meta/recipes-devtools/m4/m4_1.4.15.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "GNU m4 is an implementation of the traditional Unix macro processor."
+LICENSE = "GPLv3"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504\
+	file://examples/COPYING;md5=380fd7d57d3fd009a5716e074a845d6d"
+
+PR = "r0"
+SRC_URI = "${GNU_MIRROR}/m4/m4-${PV}.tar.gz \
+           file://ac_config_links.patch;patch=1"
+
+SRC_URI[md5sum] = "5649a2e593b6c639deae9e72ede777dd"
+SRC_URI[sha256sum] = "3d66dfeb609007062265a67b9a2c08d3686a74068830bacae60a6d58413c9367"
+
+inherit autotools
+
+EXTRA_OEMAKE += "'infodir=${infodir}'"
-- 
1.7.2.2


