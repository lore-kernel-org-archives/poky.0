Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 059504C80FA4
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 20:48:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 18:48:52 -0800
Message-Id: <849307$ahpr75@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="354217194"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 18:48:51 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 29 Nov 2010 10:28:47 +0800
To: poky@pokylinux.org
Subject: [PATCH 0/4] Miscellaneous fixes on master
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
X-List-Received-Date: Mon, 29 Nov 2010 02:48:54 -0000

This fixes several errors I've seen on latest master.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tk/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Thanks,
    Kevin Tian <kevin.tian@intel.com>
---


Kevin Tian (4):
  librsvg: append SRC_URI after inherit
  font-alias: remove unnecessary patch on COPYING
  libfontenc: add dependency on font-util
  xproto: disable spec generation

 meta/recipes-gnome/librsvg/librsvg_2.32.0.bb       |    6 +++---
 .../recipes-graphics/xorg-font/font-alias_1.0.3.bb |    4 +---
 meta/recipes-graphics/xorg-lib/libfontenc_1.1.0.bb |    4 ++--
 meta/recipes-graphics/xorg-proto/xproto_7.0.19.bb  |    3 ++-
 4 files changed, 8 insertions(+), 9 deletions(-)


