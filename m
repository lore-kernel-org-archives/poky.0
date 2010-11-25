Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 499D24C811D5
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:41 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2010 22:53:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="577771011"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2010 22:53:40 -0800
Message-Id: <d56ba8e60e3d4bfd00233ded8363ffa590544a84.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 25 Nov 2010 13:49:27 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/14] gupnp-tools: Upgrade to version 0.8
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:41 -0000

Fix recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gupnp/gupnp-tools_0.8.1.bb                     |   14 ++++++++++++++
 meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb |    7 -------
 2 files changed, 14 insertions(+), 7 deletions(-)
 create mode 100644 meta/recipes-connectivity/gupnp/gupnp-tools_0.8.1.bb
 delete mode 100644 meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb

diff --git a/meta/recipes-connectivity/gupnp/gupnp-tools_0.8.1.bb b/meta/recipes-connectivity/gupnp/gupnp-tools_0.8.1.bb
new file mode 100644
index 0000000..98b2dc0
--- /dev/null
+++ b/meta/recipes-connectivity/gupnp/gupnp-tools_0.8.1.bb
@@ -0,0 +1,14 @@
+DESCRIPTION = "Tools for GUPnP"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://src/network-light/main.c;beginline=1;endline=21;md5=033bf37c030780c5a72165846b3003f6"
+DEPENDS = "gupnp gtk+ libglade gnome-icon-theme"
+
+SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
+
+PR = "r0"
+
+inherit autotools pkgconfig
+
+SRC_URI[md5sum] = "d8a44a8c19b1cc10b8e5508448d8493f"
+SRC_URI[sha256sum] = "3b46a76fcbb0188b8d2c406e514edc7662d65f48774c81e5a19f93d7706db302"
diff --git a/meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb b/meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb
deleted file mode 100644
index 76a8b2b..0000000
--- a/meta/recipes-connectivity/gupnp/gupnp-tools_0.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-DESCRIPTION = "Tools for GUPnP"
-LICENSE = "GPL"
-DEPENDS = "gupnp gtk+ libglade gnome-icon-theme"
-
-SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
-
-inherit autotools pkgconfig
-- 
1.6.3.3


