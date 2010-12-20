Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D1AA4C808B0
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 09:01:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Dec 2010 07:01:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,202,1291622400"; d="scan'208";a="688938124"
Received: from unknown (HELO localhost) ([10.255.16.58])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 07:01:56 -0800
Message-Id: <cover.1292856365.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Mon, 20 Dec 2010 14:46:05 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] Misc build fixes v2
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
X-List-Received-Date: Mon, 20 Dec 2010 15:01:58 -0000

This series includes a corrected fix for gst-plugins-base for make 3.82 as
well as a more correct fix to enable gthumb to build on a system without
gtk-doc installed.

We do this by providing a gtk-doc-native recipe and having gtk-doc depend on
it. That way we have a binary to run on the build system to generate the
documentation as well as a target version so that the pkgconfig test passes.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/make-382
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/make-382

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (3):
  gst-plugins: fix for make 3.82
  gnome-common: add native variant via BBCLASSEXTEND
  gnome-doc-utils: ensure a native variant exists for document
    generation

 meta/recipes-gnome/gnome/gnome-common_2.28.0.bb    |    2 +
 .../gnome/gnome-doc-utils-native_0.20.2.bb         |    7 +++++
 meta/recipes-gnome/gnome/gnome-doc-utils.inc       |    4 +--
 .../gstreamer/gst-plugins-base_0.10.30.bb          |    5 ++-
 meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    2 +
 .../gstreamer/gst-plugins/make-382.patch           |   25 ++++++++++++++++++++
 6 files changed, 40 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils-native_0.20.2.bb
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch

-- 
1.7.3.3


