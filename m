Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88BFA4C811DF
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:36:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Dec 2010 11:36:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="686166165"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2010 11:36:05 -0800
Message-Id: <369a9695bdfc424fdced816db05b11c2fcc445e0.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 17:02:07 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 10/13] gst-meta-base: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:36:06 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 .../gstreamer/gst-meta-base_0.10.bb                |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb b/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
index 4d6db6d..b6f85d5 100644
--- a/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
@@ -1,6 +1,9 @@
 DESCRIPTION = "Gstreamer package groups"
 LICENSE = "MIT"
 DEPENDS = "gstreamer gst-plugins-base gst-plugins-good gst-plugins-bad"
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
 
 PR = "r8"
 
-- 
1.7.1.1


