Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF5844C800AC
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 18:29:31 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Mar 2011 16:29:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,280,1297065600"; d="scan'208";a="399048479"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by azsmga001.ch.intel.com with ESMTP; 07 Mar 2011 16:29:30 -0800
Message-Id: <c6b0c5720fa0fc2ba7a6792b7f52faad38dd47dc.1299544029.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299544029.git.sgw@linux.intel.com>
References: <cover.1299544029.git.sgw@linux.intel.com>
Old-Date: Sun, 6 Mar 2011 09:12:25 -0800
Date: Mon, 07 Mar 2011 16:29:29 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Mon, 07 Mar 2011 18:30:15 -0600
Subject: [PATCH 1/8] gst-plugins: Added hal to DEPENDS
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
X-List-Received-Date: Tue, 08 Mar 2011 00:29:32 -0000

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


