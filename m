Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 528044C80BD8
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 04:50:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2010 02:50:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="585758916"
Received: from unknown (HELO localhost) ([10.255.16.49])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 02:50:05 -0800
Message-Id: <d2abe5da855ce2418a782bc919008b4811734d90.1292928497.git.josh@linux.intel.com>
In-Reply-To: <cover.1292928497.git.josh@linux.intel.com>
References: <cover.1292928497.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Old-Date: Tue, 21 Dec 2010 10:42:02 +0000
Date: Tue, 21 Dec 2010 10:49:59 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/1] gnome-doc-utils: use BBCLASSEXTEND for native variant
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
X-List-Received-Date: Tue, 21 Dec 2010 10:50:06 -0000

A recent patch from me created a native variant of gnome-doc-utils with a new
recipe file. This is uneccesarry. BBCLASSEXTEND is the brighter future.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../gnome/gnome-doc-utils-native_0.20.2.bb         |    7 -------
 meta/recipes-gnome/gnome/gnome-doc-utils.inc       |    3 +++
 2 files changed, 3 insertions(+), 7 deletions(-)
 delete mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb

diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb b/meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb
deleted file mode 100644
index 30d5a5b..0000000
--- a/meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require gnome-doc-utils_${PV}.bb
-
-inherit native
-
-DEPENDS = "libxml2-native libxslt-native"
-
-PR = "r0"
diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils.inc b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
index 0cd8203..7328c59 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils.inc
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
@@ -1,5 +1,6 @@
 LICENSE = "GPL LGPL"
 DEPENDS = "libxml2 libxslt libxslt-native gnome-doc-utils-native"
+DEPENDS_virtclass-native = "libxml2-native libxslt-native"
 
 inherit gnome
 
@@ -11,3 +12,5 @@ do_install_append() {
 }
 
 FILES_${PN} += "${datadir}/xml*"
+
+BBCLASSEXTEND = "native"
-- 
1.7.3.3


