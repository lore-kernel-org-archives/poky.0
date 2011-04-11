Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19E9A4C804DC
	for <poky@yoctoproject.org>; Sun, 10 Apr 2011 20:21:28 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2011 18:21:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,336,1299484800"; d="scan'208";a="731535942"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2011 18:21:27 -0700
Message-Id: <a60d4281f3f56ba968636742e16a617a97c57fe4.1302485033.git.ke.yu@intel.com>
In-Reply-To: <cover.1302485033.git.ke.yu@intel.com>
References: <cover.1302485033.git.ke.yu@intel.com>
Old-Date: Thu, 7 Apr 2011 16:36:00 +0800
Date: Mon, 11 Apr 2011  9:28:38 +0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 3/9] xf86-input-vmmouse: upgrade from 12.6.10 to 12.7.0
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
X-List-Received-Date: Mon, 11 Apr 2011 01:21:29 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 ...use_12.6.10.bb => xf86-input-vmmouse_12.7.0.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-graphics/xorg-driver/{xf86-input-vmmouse_12.6.10.bb => xf86-input-vmmouse_12.7.0.bb} (64%)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb b/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.7.0.bb
similarity index 64%
rename from meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
rename to meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.7.0.bb
index 6288507..9535a8f 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.6.10.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-input-vmmouse_12.7.0.bb
@@ -7,7 +7,7 @@ RDEPENDS_${PN} += "xf86-input-mouse"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=622841c068a9d7625fbfe7acffb1a8fc"
 
-SRC_URI[md5sum] = "49c6e77851e9f7bc5cb7d85f061992f8"
-SRC_URI[sha256sum] = "a6369d5a860627f2a38842d5563045b263a459e534f6ae08df48f330f9a40910"
+SRC_URI[md5sum] = "dc77181330f983c7d0ec1ea1592c2ca7"
+SRC_URI[sha256sum] = "00e5d527a0d97e6b2a6e8c519e1339427e66fa0a43af026858655c7c62bd9e35"
 
 COMPATIBLE_HOST = '(i.86|x86_64).*-linux'
-- 
1.7.0.4


