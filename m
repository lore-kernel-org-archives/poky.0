Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 238104C80A7D
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 14:02:46 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 12:02:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,259,1297065600"; d="scan'208";a="715835197"
Received: from unknown (HELO localhost) ([10.255.12.102])
	by orsmga001.jf.intel.com with ESMTP; 03 Mar 2011 12:02:45 -0800
Message-Id: <6920a30a4bf46d2a931d83eb3560c0332036be1b.1299182375.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299182375.git.sgw@linux.intel.com>
References: <cover.1299182375.git.sgw@linux.intel.com>
Old-Date: Thu, 3 Mar 2011 19:54:09 +0800
Date: Thu, 03 Mar 2011 12:02:45 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 04/10] gstreamer: install the sound card driver of es1370
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
X-List-Received-Date: Thu, 03 Mar 2011 20:02:46 -0000

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
1.7.1.1


