Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5EEF24C80B70
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 09:02:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 07:02:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,202,1291622400"; d="scan'208";a="688938403"
Received: from unknown (HELO localhost) ([10.255.16.58])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 07:02:58 -0800
Message-Id: <df450af18ef3a46a327236c70915bf80851b7cf8.1292856365.git.josh@linux.intel.com>
In-Reply-To: <cover.1292856365.git.josh@linux.intel.com>
References: <cover.1292856365.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 17 Dec 2010 14:09:48 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] gnome-doc-utils: ensure a native variant exists for document generation
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
X-List-Received-Date: Mon, 20 Dec 2010 15:02:59 -0000

gnome-doc-utils-native must be available to do the build time generation of
documentation however most gnome projects will do a pkgconfig check for the
host version of gnome-doc-utils.

This patch adds gnome-doc-utils-native and makes gnome-doc-utils depend on it
so that recipe writers can just add gnome-doc-utils to their DEPENDS and the
system will do the right thing.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../gnome/gnome-doc-utils-native_0.20.2.bb         |    7 +++++++
 meta/recipes-gnome/gnome/gnome-doc-utils.inc       |    4 +---
 2 files changed, 8 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb

diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb b/meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb
new file mode 100644
index 0000000..30d5a5b
--- /dev/null
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb
@@ -0,0 +1,7 @@
+require gnome-doc-utils_${PV}.bb
+
+inherit native
+
+DEPENDS = "libxml2-native libxslt-native"
+
+PR = "r0"
diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils.inc b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
index 00a64e2..0cd8203 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils.inc
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
@@ -1,7 +1,5 @@
 LICENSE = "GPL LGPL"
-DEPENDS = "libxml2 libxslt libxslt-native"
-
-PR = "r1"
+DEPENDS = "libxml2 libxslt libxslt-native gnome-doc-utils-native"
 
 inherit gnome
 
-- 
1.7.3.3


