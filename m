Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0BC7A4C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:19:26 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Mar 2011 17:19:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="720568650"
Received: from unknown (HELO localhost) ([10.255.12.146])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 17:19:26 -0700
Message-Id: <cover.1300234408.git.dvhart@linux.intel.com>
Old-Date: Tue, 15 Mar 2011 17:13:28 -0700
Date: Tue, 15 Mar 2011 17:19:15 -0700
To: poky@yoctoproject.org
From: Darren Hart <dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 0/2][meta-intel] Fix Keyboard and Mouse on n450 [YOCTO #869]
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
X-List-Received-Date: Wed, 16 Mar 2011 00:19:27 -0000

From: Darren Hart <dvhart@linux.intel.com>

Before committing these patches to the meta-intel layer, I'd appreciate a
review, perhaps from Tom, to ensure I didn't miss anything - seeing how close
we are to release.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: dvhart/bernard/n450
  Browse: http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=dvhart/bernard/n450

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (2):
  n450: add formfactor config
  n450: add xorg.conf to disable AutoAddDevices

 .../formfactor/formfactor/n450/machconfig          |    3 ++
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 ++
 .../xserver-xf86-config/n450/xorg.conf             |   26 ++++++++++++++++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 ++
 4 files changed, 35 insertions(+), 0 deletions(-)
 create mode 100644 meta-n450/recipes-bsp/formfactor/formfactor/n450/machconfig
 create mode 100644 meta-n450/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config/n450/xorg.conf
 create mode 100644 meta-n450/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend


