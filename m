Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB20B4C81103
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 21:01:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Nov 2010 19:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; d="scan'208";a="630121613"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2010 19:01:31 -0800
Message-Id: <3624fa5d6e9d8864b79c1cc388af9d71d8e848aa.1290654095.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290654095.git.edwin.zhai@intel.com>
References: <cover.1290654095.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Mon, 22 Nov 2010 16:41:16 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/4] libgdata: Add 0.6.5 as new recipe
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
X-List-Received-Date: Thu, 25 Nov 2010 03:01:32 -0000

Upgrading eds-dbus to 2.32.1 requires libgdata >= 0.6.3 (0.7.0 breaks the API)

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-gnome/gnome/libgdata_0.6.5.bb |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-gnome/gnome/libgdata_0.6.5.bb

diff --git a/meta/recipes-gnome/gnome/libgdata_0.6.5.bb b/meta/recipes-gnome/gnome/libgdata_0.6.5.bb
new file mode 100644
index 0000000..8e8da5c
--- /dev/null
+++ b/meta/recipes-gnome/gnome/libgdata_0.6.5.bb
@@ -0,0 +1,12 @@
+DESCRIPTION = "GLib-based library for accessing online service APIs using the GData protocol"
+HOMEPAGE = "http://live.gnome.org/libgdata"
+BUGTRACKER = "https://bugzilla.gnome.org/"
+
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=fbc093901857fcd118f065f900982c24 \
+                    file://gdata/gdata.h;endline=20;md5=079a554efcf65d46f96a515806e7e99a \
+                    file://gdata/gdata-types.h;endline=20;md5=7399b111aac8718da13888fc634be6ef"
+
+DEPENDS = "libxml2 glib-2.0 libsoup-2.4"
+
+inherit gnome pkgconfig autotools
-- 
1.7.0.4


