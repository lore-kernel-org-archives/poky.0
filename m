Return-Path: <lei.mei@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 577B44C81216
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 01:19:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 23:19:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,275,1288594800"; d="scan'208";a="354290823"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 23:19:16 -0800
Message-Id: <9f7aba94361d27a77cdf881406229db231c0c36f.1291014682.git.lei.mei@intel.com>
In-Reply-To: <cover.1291014682.git.lei.mei@intel.com>
References: <cover.1291014682.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Mon, 29 Nov 2010 15:06:41 +0800
To: poky@yoctoproject.org
Subject: [PATCH 6/6] gthumb:Add license checksum to bb file
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
X-List-Received-Date: Mon, 29 Nov 2010 07:19:17 -0000

Add COPYING file checksum to bb file

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/recipes-gnome/gthumb/gthumb_2.12.0.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb b/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
index f6755b0..27f63db 100644
--- a/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
+++ b/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
@@ -1,6 +1,7 @@
 DESCRIPTION = "gThumb is an image viewer and browser for the GNOME Desktop"
 SECTION = "x11/gnome"
 LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 DEPENDS = "glib-2.0 gtk+ libxml2 gnome-doc-utils libunique gconf-dbus libpng gstreamer jpeg tiff"
 PR = "r1"
 
-- 
1.6.3.3


