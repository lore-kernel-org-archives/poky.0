Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D89B4C811C2
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 02:53:13 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Dec 2010 00:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,323,1288594800"; d="scan'208";a="582402059"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga002.jf.intel.com with ESMTP; 10 Dec 2010 00:53:10 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PQydz-000392-2h; Fri, 10 Dec 2010 16:47:59 +0800
Message-Id: <cover.1291970759.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 10 Dec 2010 16:45:59 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/8] recipe/license upgrade
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
X-List-Received-Date: Fri, 10 Dec 2010 08:53:14 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro

Thanks,
    Qing He
---


Qing He (8):
  udev: upgrade to version 164
  fakeroot: upgrade to version 1.14.5
  fakechroot: upgrade to version 2.13.1
  diffutils: upgrade to version 3.0
  udev-extraconf: add license info
  qemu-config: update license info
  usbinit: update license info
  update-modules: update license info

 meta/conf/distro/include/poky-fixed-revisions.inc  |    2 +-
 meta/recipes-bsp/qemu-config/qemu-config.bb        |    3 +
 .../qemu-config/qemu-config/COPYING.GPL            |  339 ++++++++++++++++++++
 meta/recipes-bsp/usbinit/usbinit.bb                |    3 +
 meta/recipes-bsp/usbinit/usbinit/COPYING.GPL       |  339 ++++++++++++++++++++
 meta/recipes-core/udev/{udev-158 => udev-164}/init |    0
 .../udev/{udev-158 => udev-164}/local.rules        |    0
 .../udev/{udev-158 => udev-164}/permissions.rules  |    0
 .../udev/{udev-158 => udev-164}/run.rules          |    0
 .../udev/{udev-158 => udev-164}/udev.rules         |    0
 meta/recipes-core/udev/udev-extraconf/COPYING.GPL  |  339 ++++++++++++++++++++
 meta/recipes-core/udev/udev-extraconf_0.0.bb       |    1 +
 meta/recipes-core/udev/udev_158.bb                 |    6 -
 meta/recipes-core/udev/udev_164.bb                 |    6 +
 .../fakechroot/fakechroot/fix-readlink.patch       |   26 --
 .../fakechroot/fakechroot_2.13.1.bb                |   17 +
 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb |   20 --
 .../absolutepaths.patch                            |    0
 .../{fakeroot_1.14.4.bb => fakeroot_1.14.5.bb}     |   13 +-
 meta/recipes-extended/diffutils/diffutils_3.0.bb   |   25 ++
 .../update-modules/update-modules-1.0/COPYING.GPL  |  339 ++++++++++++++++++++
 .../update-modules/update-modules_1.0.bb           |    2 +
 22 files changed, 1423 insertions(+), 57 deletions(-)
 create mode 100644 meta/recipes-bsp/qemu-config/qemu-config/COPYING.GPL
 create mode 100644 meta/recipes-bsp/usbinit/usbinit/COPYING.GPL
 rename meta/recipes-core/udev/{udev-158 => udev-164}/init (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/local.rules (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/permissions.rules (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/run.rules (100%)
 rename meta/recipes-core/udev/{udev-158 => udev-164}/udev.rules (100%)
 create mode 100644 meta/recipes-core/udev/udev-extraconf/COPYING.GPL
 delete mode 100644 meta/recipes-core/udev/udev_158.bb
 create mode 100644 meta/recipes-core/udev/udev_164.bb
 delete mode 100644 meta/recipes-devtools/fakechroot/fakechroot/fix-readlink.patch
 create mode 100644 meta/recipes-devtools/fakechroot/fakechroot_2.13.1.bb
 delete mode 100644 meta/recipes-devtools/fakechroot/fakechroot_2.9.bb
 rename meta/recipes-devtools/fakeroot/{fakeroot-1.14.4 => fakeroot-1.14.5}/absolutepaths.patch (100%)
 rename meta/recipes-devtools/fakeroot/{fakeroot_1.14.4.bb => fakeroot_1.14.5.bb} (75%)
 create mode 100644 meta/recipes-extended/diffutils/diffutils_3.0.bb
 create mode 100644 meta/recipes-kernel/update-modules/update-modules-1.0/COPYING.GPL


