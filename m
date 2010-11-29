Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A6D94C81224
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Nov 2010 22:09:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="681855202"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2010 22:09:42 -0800
Message-Id: <83e16e02135b7380497b662c319d1a0e0dcd547c.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 29 Nov 2010 11:00:15 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/13] libsamplerate0: Fix LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:44 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libsamplerate/libsamplerate0_0.1.2.bb          |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb b/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
index 1092340..1ecf4e4 100644
--- a/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
+++ b/meta/recipes-multimedia/libsamplerate/libsamplerate0_0.1.2.bb
@@ -1,6 +1,8 @@
 DESCRIPTION = "An audio Sample Rate Conversion library"
 SECTION = "libs"
-LICENSE = "GPL libsamplerate"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+                    file://src/samplerate.c;beginline=1;endline=17;md5=2deac26142757e825d957e5ac149b292"
 DEPENDS = "flac"
 PR = "r3"
 
-- 
1.6.3.3


