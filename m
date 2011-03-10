Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07BA14C800A3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 10:52:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2011 08:52:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,297,1297065600"; d="scan'208";a="718732201"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by orsmga001.jf.intel.com with ESMTP; 10 Mar 2011 08:52:24 -0800
Message-Id: <ed0283122b6867cc29d35bb6d0215935406073a4.1299775598.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299775598.git.sgw@linux.intel.com>
References: <cover.1299775598.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 13:51:20 +0800
Date: Thu, 10 Mar 2011  8:52:22 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 7/8] gst-plugins-bad: add missing dependency librsvg
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
X-List-Received-Date: Thu, 10 Mar 2011 16:52:32 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Defaultly gst-plugins-bad will configured with option --enable-rsvg.
Besides, it will check if librsvg really exists by certain configure
code.

Therefore there will be a certain race condition that, during
librsvg's populate_sysroot, gst-plugins-bad's do_compile will find
some header files are still not exists though its configure says the
library is supported.

Explicitly add librsvg as gst-plugins-bad's dependency could solve
this issue.

This fixes [YOCTO #831]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-plugins-bad_0.10.20.bb           |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
index 59e127c..239072d 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
@@ -7,9 +7,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
                     file://gst/qtmux/gstqtmuxmap.h;beginline=1;endline=19;md5=2da8f56a44697c1527c5a4bcf8d5d69b \
                     file://gst/tta/crc32.h;beginline=12;endline=29;md5=71a904d99ce7ae0c1cf129891b98145c"
 
-DEPENDS += "gst-plugins-base libmusicbrainz tremor"
+DEPENDS += "gst-plugins-base libmusicbrainz tremor librsvg"
 
-PR = "r0"
+PR = "r1"
 
 inherit gettext
 
-- 
1.7.1.1


