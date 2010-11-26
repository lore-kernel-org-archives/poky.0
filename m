Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 635AC4C811D6
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Nov 2010 08:08:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="630566288"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 26 Nov 2010 08:08:12 -0800
Message-Id: <2703d32fd5415507c5f0eb92189bad837a194d75.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 22:32:57 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/11] libcanberra: Add license check sum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:13 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb b/meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb
index c6d25dc..dedd199 100644
--- a/meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb
+++ b/meta/recipes-tbd/pulseaudio/libcanberra_0.10.bb
@@ -1,5 +1,8 @@
 DESCRIPTION = "Libcanberra is an implementation of the XDG Sound Theme and Name Specifications, for generating event sounds on free desktops."
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1"
+LIC_FILES_CHKSUM = "file://LGPL;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+                    file://src/canberra.h;endline=24;md5=8dd99ba690687f5816f711d9313c8967"
+
 DEPENDS = "gtk+ pulseaudio alsa-lib libtool"
 PR = "r3"
 
-- 
1.7.0.4


