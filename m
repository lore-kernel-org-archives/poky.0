Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6861F4C808B6
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 08:25:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Nov 2010 06:25:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,231,1288594800"; d="scan'208";a="576038008"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 21 Nov 2010 06:25:08 -0800
Message-Id: <cover.1290345671.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sun, 21 Nov 2010 21:21:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] upgrade cairo, pango, imake
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
X-List-Received-Date: Sun, 21 Nov 2010 14:25:09 -0000

Cairo upgradtion patch has been hold in last patch push due to build failure mentioned in bug 540. This issue has been root caused as package rename, and has been fixed this time. so push it for review again.

Note: cairo 1.10.0 depends on pixman 0.20.0, which is already in contrib/distro/master branch, but not in poky/master yet. so please build this commit upon contrib/distro/master, not poky/master.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/upgrade-11-21
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade-11-21

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (3):
  cairo: upgrade from 1.8.10 to 1.10.0
  pango: upgrade from 1.28.0 to 1.28.3
  imake: upgrade from 1.0.2 to 1.0.4

 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../cairo/cairo-1.8.10/hardcoded_libtool.patch     |   17 ---------
 meta/recipes-graphics/cairo/cairo_1.10.0.bb        |   36 ++++++++++++++++++++
 meta/recipes-graphics/cairo/cairo_1.8.10.bb        |    8 ----
 .../{pango-1.28.0 => pango-1.28.3}/no-tests.patch  |    0
 meta/recipes-graphics/pango/pango.inc              |    1 +
 .../pango/{pango_1.28.0.bb => pango_1.28.3.bb}     |    0
 .../xorg-util/{imake_1.0.2.bb => imake_1.0.4.bb}   |    4 ++-
 8 files changed, 41 insertions(+), 27 deletions(-)
 delete mode 100644 meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
 create mode 100644 meta/recipes-graphics/cairo/cairo_1.10.0.bb
 delete mode 100644 meta/recipes-graphics/cairo/cairo_1.8.10.bb
 rename meta/recipes-graphics/pango/{pango-1.28.0 => pango-1.28.3}/no-tests.patch (100%)
 rename meta/recipes-graphics/pango/{pango_1.28.0.bb => pango_1.28.3.bb} (100%)
 rename meta/recipes-graphics/xorg-util/{imake_1.0.2.bb => imake_1.0.4.bb} (64%)


