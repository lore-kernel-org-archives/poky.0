Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 049604C80815
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 03:49:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Nov 2010 01:49:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="353481561"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 01:49:19 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PLuqt-00053R-Px; Fri, 26 Nov 2010 17:44:23 +0800
Message-Id: <cover.1290764497.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 26 Nov 2010 17:41:37 +0800
To: poky@yoctoproject.org
Subject: [PATCH 00/15] update license information of several packages
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
X-List-Received-Date: Fri, 26 Nov 2010 09:49:21 -0000

This patch set adds LIC_FILES_CHKSUM for several packages

Thanks,
Qing

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (15):
  aspell: update license
  diffutils: update license
  fakechroot: update license info
  hdparm: update license info
  ncurses: update license info
  parted: update license info
  resolvconf: update license info
  setserial: update license info
  tiff: update license info
  tinylogin: update license info
  v86d: update license info
  zaurusd: update license info
  yaffs2-utils: update license info
  ubootchart: update license info
  u-boot-mkimage: update license info

 meta/recipes-bsp/setserial/setserial_2.17.bb       |    3 +++
 meta/recipes-bsp/uboot/u-boot-mkimage_2009.08.bb   |    3 ++-
 meta/recipes-bsp/v86d/v86d_0.1.9.bb                |    2 ++
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    3 ++-
 .../resolvconf/resolvconf_1.43.bb                  |    3 ++-
 meta/recipes-core/ncurses/ncurses.inc              |    1 +
 meta/recipes-core/tinylogin/tinylogin_1.4.bb       |    3 ++-
 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |    3 ++-
 meta/recipes-devtools/ubootchart/ubootchart_svn.bb |    1 +
 meta/recipes-devtools/yaffs2/yaffs2-utils.inc      |    1 +
 meta/recipes-extended/diffutils/diffutils_2.8.1.bb |    6 ++++--
 meta/recipes-extended/hdparm/hdparm_6.3.bb         |    1 +
 meta/recipes-extended/parted/parted_1.9.0.bb       |    3 ++-
 meta/recipes-multimedia/libtiff/tiff_3.8.2.bb      |    1 +
 meta/recipes-support/aspell/aspell_0.60.6.bb       |    3 ++-
 15 files changed, 28 insertions(+), 9 deletions(-)


