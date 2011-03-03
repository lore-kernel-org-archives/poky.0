Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A0D044C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 06:01:54 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Mar 2011 04:01:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,258,1297065600"; d="scan'208";a="396901824"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by azsmga001.ch.intel.com with ESMTP; 03 Mar 2011 04:01:53 -0800
Message-Id: <260df984a5735b6cd5999b11a687ae3a9557818f.1299153379.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1299153379.git.edwin.zhai@intel.com>
References: <cover.1299153379.git.edwin.zhai@intel.com>
Old-Date: Thu, 3 Mar 2011 19:54:09 +0800
Date: Thu, 03 Mar 2011 19:59:57 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 3/3] gstreamer: install the sound card driver of es1370
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
X-List-Received-Date: Thu, 03 Mar 2011 12:01:54 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

When append "audio" to poky-qemu, emulated sound card like es1370 is
exported to guest. This patch install the kernel driver in the
poky-image-qemux86/x86_64 to use them.

[BUGID #751]

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../gstreamer/gstreamer_0.10.31.bb                 |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
index f489e83..96c45eb 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
@@ -27,6 +27,9 @@ EXTRA_OECONF = "--disable-docs-build --disable-dependency-tracking --with-check=
 #	mv ${WORKDIR}/gstregistrybinary.[ch] ${S}/gst/
 #}
 
+RRECOMMENDS_${PN}_qemux86    += "kernel-module-snd-ens1370 kernel-module-snd-rawmidi"
+RRECOMMENDS_${PN}_qemux86-64 += "kernel-module-snd-ens1370 kernel-module-snd-rawmidi"
+
 FILES_${PN} += " ${libdir}/gstreamer-0.10/*.so"
 FILES_${PN}-dev += " ${libdir}/gstreamer-0.10/*.la ${libdir}/gstreamer-0.10/*.a"
 FILES_${PN}-dbg += " ${libdir}/gstreamer-0.10/.debug/"
-- 
1.6.3.3


