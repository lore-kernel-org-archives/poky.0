Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4018E4C800A3
	for <poky@yoctoproject.org>; Sun,  6 Mar 2011 11:19:40 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Mar 2011 09:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,272,1297065600"; d="scan'208";a="609661646"
Received: from unknown (HELO localhost) ([10.255.12.181])
	by orsmga002.jf.intel.com with ESMTP; 06 Mar 2011 09:19:39 -0800
Message-Id: <c6b0c5720fa0fc2ba7a6792b7f52faad38dd47dc.1299431945.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299431945.git.sgw@linux.intel.com>
References: <cover.1299431945.git.sgw@linux.intel.com>
Old-Date: Sun, 6 Mar 2011 09:12:25 -0800
Date: Sun, 06 Mar 2011  9:19:39 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 1/2] gst-plugins: Added hal to DEPENDS
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
X-List-Received-Date: Sun, 06 Mar 2011 17:19:40 -0000

From: Saul Wold <sgw@linux.intel.com>

Fixes [YOCTO #810]

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-multimedia/gstreamer/gst-plugins.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins.inc b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
index 4edca95..d1abd36 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins.inc
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
@@ -3,7 +3,7 @@ HOMEPAGE = "http://gstreamer.freedesktop.org/"
 BUGTRACKER = "https://bugzilla.gnome.org/enter_bug.cgi?product=Gstreamer"
 SECTION = "multimedia"
 PRIORITY = "optional"
-DEPENDS = "gstreamer"
+DEPENDS = "gstreamer hal"
 
 inherit autotools pkgconfig
 
-- 
1.7.1.1


