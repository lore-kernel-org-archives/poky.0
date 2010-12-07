Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69C074C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:06:42 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Dec 2010 23:06:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="633841095"
Received: from unknown (HELO localhost) ([10.255.13.237])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 23:06:41 -0800
Message-Id: <cover.1291703954.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Tue, 7 Dec 2010 00:39:14 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Add meta-crownbay
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
X-List-Received-Date: Tue, 07 Dec 2010 07:06:42 -0000

Adds a new layer for Tunnel Creek/Topcliff systems.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/crownbay
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/crownbay

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  meta-crownbay: new layer for E6xx/EG20T systems

 meta-crownbay/COPYING.MIT                          |   17 +++
 meta-crownbay/README.before.building               |  112 ++++++++++++++++++++
 meta-crownbay/conf/layer.conf                      |   10 ++
 meta-crownbay/conf/machine/crownbay.conf           |   46 ++++++++
 .../formfactor/formfactor/crownbay/machconfig      |    3 +
 .../recipes/formfactor/formfactor_0.0.bbappend     |    3 +
 .../recipes/linux/linux-yocto_git.bbappend         |    3 +
 .../xserver-xf86-config/crownbay/xorg.conf         |   47 ++++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 ++++++++++++++++
 .../xserver-xf86-emgd/crosscompile.patch           |   19 ++++
 .../fix_open_max_preprocessor_error.patch          |   13 +++
 .../xserver-xf86-emgd/macro_tweak.patch            |   18 +++
 .../xorg-xserver/xserver-xf86-emgd/nodolt.patch    |   12 ++
 .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 +++++
 15 files changed, 421 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/COPYING.MIT
 create mode 100755 meta-crownbay/README.before.building
 create mode 100644 meta-crownbay/conf/layer.conf
 create mode 100644 meta-crownbay/conf/machine/crownbay.conf
 create mode 100644 meta-crownbay/recipes/formfactor/formfactor/crownbay/machconfig
 create mode 100644 meta-crownbay/recipes/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-crownbay/recipes/linux/linux-yocto_git.bbappend
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd/nodolt.patch
 create mode 100644 meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb


