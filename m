Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C40BDE005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 00:17:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Oct 2011 00:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="62407157"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.36.112])
	by orsmga002.jf.intel.com with ESMTP; 12 Oct 2011 00:17:57 -0700
From: Dexuan Cui <dexuan.cui@intel.com>
To: poky@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 12 Oct 2011 15:17:52 +0800
Message-Id: <cover.1318403772.git.dexuan.cui@intel.com>
X-Mailer: git-send-email 1.7.6
Subject: [PATCH 0/1] [meta-intel]fix to bug 1670
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
X-List-Received-Date: Wed, 12 Oct 2011 07:17:58 -0000

The following changes since commit e0e52850cf5f84fb4ee1bfa15571aaf61e068450:

  meta-emenlow: restore /usr/lib/dri for xpsb-glx (2011-10-10 08:22:54 -0500)

are available in the git repository at:
  git://git.pokylinux.org/meta-intel-contrib dcui/fix_1670
  http://git.pokylinux.org/cgit.cgi/meta-intel-contrib/log/?h=dcui/fix_1670

Dexuan Cui (1):
  xserver-xf86-dri-lite: rename it to xserver-xorg

 .../crosscompile.patch                             |    0
 .../fix_open_max_preprocessor_error.patch          |    0
 .../macro_tweak.patch                              |    2 +-
 .../nodolt.patch                                   |    0
 ...86-dri-lite_1.9.3.bb => xserver-xorg_1.11.1.bb} |    2 +-
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 +++---
 meta-crownbay/conf/machine/crownbay.conf           |    8 ++++----
 meta-emenlow/conf/machine/emenlow.conf             |    2 +-
 .../xorg-xserver/xserver-psb_1.7.99.2.bb           |    2 +-
 meta-fishriver/conf/machine/fishriver.conf         |    6 +++---
 meta-fri2/conf/machine/fri2-noemgd.conf            |    6 +++---
 meta-fri2/conf/machine/fri2.conf                   |    8 ++++----
 meta-jasperforest/conf/machine/jasperforest.conf   |    6 +++---
 meta-n450/conf/machine/n450.conf                   |    6 +++---
 meta-sugarbay/conf/machine/sugarbay.conf           |    6 +++---
 15 files changed, 30 insertions(+), 30 deletions(-)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/crosscompile.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/fix_open_max_preprocessor_error.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/macro_tweak.patch (93%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite => xserver-xorg}/nodolt.patch (100%)
 rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.bb => xserver-xorg_1.11.1.bb} (87%)

-- 
1.7.6


