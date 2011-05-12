Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3C764C80A4D
	for <poky@yoctoproject.org>; Thu, 12 May 2011 17:08:02 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 May 2011 15:08:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,360,1301900400"; 
   d="scan'208";a="997267"
Received: from unknown (HELO localhost) ([10.255.12.106])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2011 15:07:43 -0700
Message-Id: <cover.1305236058.git.tom.zanussi@intel.com>
Old-Date: Thu, 12 May 2011 16:34:18 -0500
Date: Thu, 12 May 2011 17:07:19 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/4] meta-crownbay: emgd 1.6.1 upgrade
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
X-List-Received-Date: Thu, 12 May 2011 22:08:02 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset upgrades meta-crownbay to make use of the emgd 1.6.1
support added to linux-yocto, and removes the resulting obsoleted
recipes.

Pull URL: git://git.pokylinux.org/meta-intel
  Branch: tzanussi/emgd-1.6.1-upgrade
  Browse: http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/emgd-1.6.1-upgrade

Tom Zanussi (4):
  meta-crownbay: new recipe for emgd 1.6.1 driver binaries
  meta-crownbay: add xserver-xf86-dri-lite_1.9.3 .bbappend
  meta-crownbay: update crownbay.conf
  meta-crownbay: remove obsolete graphics recipes

 meta-crownbay/conf/machine/crownbay.conf           |   12 ++--
 .../xorg-xserver/emgd-driver-bin_1.6.1.bb          |   25 ++++++
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 +
 .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 --------------------
 .../xserver-xf86-emgd/crosscompile.patch           |   19 ----
 .../fix_open_max_preprocessor_error.patch          |   13 ---
 .../xserver-xf86-emgd/macro_tweak.patch            |   18 ----
 .../xorg-xserver/xserver-xf86-emgd/nodolt.patch    |   12 ---
 .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 ------
 9 files changed, 32 insertions(+), 183 deletions(-)
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6.1/.gitignore
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.6.1.bb
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
 delete mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb


