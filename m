Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 708DD4C80A1D
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 09:48:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 07:47:57 -0800
Message-Id: <b9dded$huid3p@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="602485884"
Received: from unknown (HELO localhost) ([10.255.14.181])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 07:47:56 -0800
Old-Date: Sun, 13 Feb 2011 22:40:02 -0600
Date: Mon, 14 Feb 2011  9:47:44 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] meta-jasperforest: new layer for Jasper Forest/Ibex Peak
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
X-List-Received-Date: Mon, 14 Feb 2011 15:48:00 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This layer provides support for Jasper Forest + Ibex Peak Intel
systems. 'Jasper Forest' refers to the Intel Xeon C5500/C3500
processors, which combined with the Intel 3420 PCH chipset (Ibex Peak)
make up the 'Picket Post' CRB this BSP was developed on.

Please pull.

Thanks,

Tom

Pull URL: git://git.pokylinux.org/meta-intel/tzanussi/jasperforest
  Branch: tzanussi/jasperforest
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=tzanussi/jasperforest

Tom Zanussi (1):
  meta-jasperforest: new layer for Xeon C5500/C3500 + Intel 3420

 meta-jasperforest/COPYING.MIT                      |   17 ++++
 meta-jasperforest/README                           |   85 ++++++++++++++++++++
 meta-jasperforest/conf/layer.conf                  |   12 +++
 meta-jasperforest/conf/machine/jasperforest.conf   |   54 ++++++++++++
 .../formfactor/formfactor/jasperforest/machconfig  |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../xserver-xf86-config/jasperforest/xorg.conf     |   32 ++++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 +
 .../linux/linux-yocto-stable_git.bbappend          |    5 +
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    6 ++
 11 files changed, 221 insertions(+), 0 deletions(-)
 create mode 100644 meta-jasperforest/COPYING.MIT
 create mode 100644 meta-jasperforest/README
 create mode 100644 meta-jasperforest/binary/.gitignore
 create mode 100644 meta-jasperforest/conf/layer.conf
 create mode 100644 meta-jasperforest/conf/machine/jasperforest.conf
 create mode 100644 meta-jasperforest/recipes-bsp/formfactor/formfactor/jasperforest/machconfig
 create mode 100644 meta-jasperforest/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-config/jasperforest/xorg.conf
 create mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-jasperforest/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
 create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend


