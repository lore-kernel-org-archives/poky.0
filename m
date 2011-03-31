Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1DB964C800A0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 19:42:12 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Mar 2011 17:42:11 -0700
Message-Id: <1bdc18$k2a46n@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,271,1299484800"; d="scan'208";a="673517787"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2011 17:42:10 -0700
Old-Date: Wed, 30 Mar 2011 19:32:36 -0500
Date: Wed, 30 Mar 2011 19:41:52 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] meta-fishriver: new BSP
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
X-List-Received-Date: Thu, 31 Mar 2011 00:42:12 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset implements a new BSP for Fish River Island (Z530/EG20T).

The basic platorm support works e.g. network, sato desktop,
USB keyboard/mouse, but it currently only supports vesa.

Better graphics support and support for more of the Fish River Island
devices will be added later.

Please pull into meta-intel/master.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: tzanussi/meta-fishriver-initial-BSP
  Browse: http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/meta-fishriver-initial-BSP

Tom Zanussi (1):
  meta-fishriver: new layer for Fish River Island (Z530/EG20T) systems

 meta-fishriver/COPYING.MIT                         |   17 ++++
 meta-fishriver/README                              |   94 ++++++++++++++++++++
 meta-fishriver/conf/layer.conf                     |   10 ++
 meta-fishriver/conf/machine/fishriver.conf         |   46 ++++++++++
 .../formfactor/formfactor/fishriver/machconfig     |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../xserver-xf86-config/fishriver/xorg.conf        |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    4 +
 9 files changed, 206 insertions(+), 0 deletions(-)
 create mode 100644 meta-fishriver/COPYING.MIT
 create mode 100644 meta-fishriver/README
 create mode 100644 meta-fishriver/binary/.gitignore
 create mode 100644 meta-fishriver/conf/layer.conf
 create mode 100644 meta-fishriver/conf/machine/fishriver.conf
 create mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
 create mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
 create mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend


