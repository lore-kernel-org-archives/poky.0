Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 41C484C8006D
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:35:03 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Feb 2011 05:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="657481065"
Received: from unknown (HELO localhost) ([10.255.14.192])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2011 05:35:02 -0800
Message-Id: <cover.1297690342.git.sgw@linux.intel.com>
Old-Date: Mon, 14 Feb 2011 05:32:22 -0800
Date: Mon, 14 Feb 2011  5:35:01 -0800
To: poky@yoctoproject.org
CC: 
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/5] Misc patches for build issues
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
X-List-Received-Date: Mon, 14 Feb 2011 13:35:03 -0000

From: Saul Wold <sgw@linux.intel.com>

Richard,

This fixes a couple of build related issues along with addressing 
the reason why menuconfig will not start a xterm.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (5):
  distro tracking: minor fix to mc lastest version
  bitbake.conf: change revision fetching to use newer fetch2 code
  kernel.bbclass: add approproate X Environment variables to allow
    xterm to start
  libva: add libxfixes to DEPENDS
  xpsb-glx: add libxfixes and libxdamages to DEPENDS

 .../recipes-graphics/libva/libva_0.31.0.bb         |    2 +-
 .../recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb     |    2 +-
 meta/classes/kernel.bbclass                        |    3 +++
 meta/conf/bitbake.conf                             |    4 ++--
 .../conf/distro/include/distro_tracking_fields.inc |    4 ++--
 5 files changed, 9 insertions(+), 6 deletions(-)


