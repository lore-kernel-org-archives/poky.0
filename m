Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89C5C4C80B70
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 09:47:19 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2010 07:47:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,361,1288594800"; d="scan'208";a="688191977"
Received: from unknown (HELO localhost) ([10.255.16.45])
	by orsmga001.jf.intel.com with ESMTP; 17 Dec 2010 07:47:18 -0800
Message-Id: <cover.1292600657.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 17 Dec 2010 15:44:17 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/4] Misc build fixes
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
X-List-Received-Date: Fri, 17 Dec 2010 15:47:19 -0000

This series includes a corrected fix for gst-plugins-base for make 3.82 as
well as fixes to enable gthumb to build on a system without gtk-doc installed

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/make-382
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/make-382

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (4):
  gst-plugins: fix for make 3.82
  gnome-common: add native variant via BBCLASSEXTEND
  gnome-doc-utils: add native variant using BBCLASSEXTEND
  gthumb: add gnome-doc-utils-native to DEPENDS

 meta/recipes-gnome/gnome/gnome-common_2.28.0.bb    |    2 +
 meta/recipes-gnome/gnome/gnome-doc-utils.inc       |    2 +
 meta/recipes-gnome/gthumb/gthumb_2.12.0.bb         |    4 +-
 .../gstreamer/gst-plugins-base_0.10.30.bb          |    5 ++-
 meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    2 +
 .../gstreamer/gst-plugins/make-382.patch           |   25 ++++++++++++++++++++
 6 files changed, 36 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch

-- 
1.7.3.3


