Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F7804C80052
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:11:54 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Nov 2010 18:11:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="627534054"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2010 18:11:53 -0800
Message-Id: <cover.1289958240.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Wed, 17 Nov 2010 09:44:00 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/12] x server library upgrade
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
X-List-Received-Date: Wed, 17 Nov 2010 02:11:54 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dcui/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Dexuan Cui (12):
  damageproto: upgrade from 1.2.0 to the latest version 1.2.1
  fixesproto: upgrade from 4.1.1 to the latest version 4.1.2
  fontsproto: upgrade from 2.1.0 to the latest version 2.1.1
  glproto: upgrade from 1.4.11 to the latest version 1.4.12
  kbproto: upgrade from 1.0.4 to the latest version 1.0.5
  randrproto: upgrade from 1.3.1 to the latest version 1.3.2
  recordproto: upgrade from 1.14 to the latest version 1.14.1
  scrnsaverproto: upgrade from 1.2.0 to the latest version 1.2.1
  videoproto: upgrade from 2.3.0 to the latest version 2.3.1
  xcmiscproto: upgrade from 1.2.0 to the latest version 1.2.1
  xextproto: upgrade from 7.1.1 to the latest version 7.1.2
  Distro Tracking: update distro tracking field for recipes of Graphics
    libs

 .../conf/distro/include/distro_tracking_fields.inc |   66 ++++++++++----------
 .../distro/include/preferred-xorg-versions.inc     |   38 ++++++------
 ...bxscrnsaver_1.2.0.bb => libxscrnsaver_1.2.1.bb} |    2 +-
 .../{damageproto_1.2.0.bb => damageproto_1.2.1.bb} |    2 +-
 .../xorg-proto/fixesproto_4.1.1.bb                 |   11 ---
 .../xorg-proto/fixesproto_4.1.2.bb                 |   11 +++
 .../{fontsproto_2.1.0.bb => fontsproto_2.1.1.bb}   |    2 +-
 .../{glproto_1.4.11.bb => glproto_1.4.12.bb}       |    2 +-
 .../{kbproto_1.0.4.bb => kbproto_1.0.5.bb}         |    2 +-
 .../{randrproto_1.3.1.bb => randrproto_1.3.2.bb}   |    2 +-
 .../{recordproto_1.14.bb => recordproto_1.14.1.bb} |    2 +-
 .../{videoproto_2.3.0.bb => videoproto_2.3.1.bb}   |    2 +-
 .../{xcmiscproto_1.2.0.bb => xcmiscproto_1.2.1.bb} |    2 +-
 .../{xextproto_7.1.1.bb => xextproto_7.1.2.bb}     |    0
 14 files changed, 72 insertions(+), 72 deletions(-)
 rename meta/recipes-graphics/xorg-lib/{libxscrnsaver_1.2.0.bb => libxscrnsaver_1.2.1.bb} (95%)
 rename meta/recipes-graphics/xorg-proto/{damageproto_1.2.0.bb => damageproto_1.2.1.bb} (96%)
 delete mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
 rename meta/recipes-graphics/xorg-proto/{fontsproto_2.1.0.bb => fontsproto_2.1.1.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{glproto_1.4.11.bb => glproto_1.4.12.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{kbproto_1.0.4.bb => kbproto_1.0.5.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{randrproto_1.3.1.bb => randrproto_1.3.2.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{recordproto_1.14.bb => recordproto_1.14.1.bb} (96%)
 rename meta/recipes-graphics/xorg-proto/{videoproto_2.3.0.bb => videoproto_2.3.1.bb} (93%)
 rename meta/recipes-graphics/xorg-proto/{xcmiscproto_1.2.0.bb => xcmiscproto_1.2.1.bb} (95%)
 rename meta/recipes-graphics/xorg-proto/{xextproto_7.1.1.bb => xextproto_7.1.2.bb} (100%)


