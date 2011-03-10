Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A27454C80852
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 00:03:04 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Mar 2011 22:03:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,294,1297065600"; d="scan'208";a="665805238"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by fmsmga002.fm.intel.com with ESMTP; 09 Mar 2011 22:02:48 -0800
Message-Id: <d12c10bacedd5d777a22a6d8c2e386e449501411.1299736614.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1299736614.git.dongxiao.xu@intel.com>
References: <cover.1299736614.git.dongxiao.xu@intel.com>
Old-Date: Thu, 10 Mar 2011 13:51:20 +0800
Date: Thu, 10 Mar 2011 14:02:33 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] gst-plugins-bad: add missing dependency librsvg
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
X-List-Received-Date: Thu, 10 Mar 2011 06:03:04 -0000

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
1.7.1


