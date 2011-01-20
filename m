Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 001984C811F8
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="879228883"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2011 01:30:25 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001xj-Jl; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 17:21:42 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/7] recipe upgrades for base, Jan 20. 2011
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
X-List-Received-Date: Thu, 20 Jan 2011 09:30:33 -0000

Also includes some distro tracking fields update

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (7):
  distro-tracking: update some tracking fields
  coreutils: upgrade to version 8.9
  libnfsidmap: upgrade to version 0.24
  shared-mime-info: upgrade to version 0.90
  dbus: upgrade to version 1.4.1
  zaurusd: upgrade to svn revision 426
  resolvconf: upgrade to version 1.48

 .../conf/distro/include/distro_tracking_fields.inc |  159 +++++--------------
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-bsp/zaurusd/zaurusd_svn.bb            |    2 +-
 .../nfs-utils/files/fix-ac-prereq.patch            |   13 ++
 .../{libnfsidmap_0.23.bb => libnfsidmap_0.24.bb}   |    8 +-
 .../{resolvconf_1.43.bb => resolvconf_1.48.bb}     |    7 +-
 .../{coreutils_8.5.bb => coreutils_8.9.bb}         |    9 +-
 .../dbus/{dbus-1.4.0 => dbus-1.4.1}/dbus-1.init    |    0
 .../dbus/{dbus-1.4.0 => dbus-1.4.1}/tmpdir.patch   |    0
 meta/recipes-core/dbus/dbus_1.4.0.bb               |    6 -
 meta/recipes-core/dbus/dbus_1.4.1.bb               |    6 +
 .../shared-mime-info/fix-parallel-build.patch      |   21 +++
 .../shared-mime-info/shared-mime-info_0.80.bb      |    5 -
 .../shared-mime-info/shared-mime-info_0.90.bb      |    7 +
 14 files changed, 105 insertions(+), 140 deletions(-)
 create mode 100644 meta/recipes-connectivity/nfs-utils/files/fix-ac-prereq.patch
 rename meta/recipes-connectivity/nfs-utils/{libnfsidmap_0.23.bb => libnfsidmap_0.24.bb} (60%)
 rename meta/recipes-connectivity/resolvconf/{resolvconf_1.43.bb => resolvconf_1.48.bb} (87%)
 rename meta/recipes-core/coreutils/{coreutils_8.5.bb => coreutils_8.9.bb} (90%)
 rename meta/recipes-core/dbus/{dbus-1.4.0 => dbus-1.4.1}/dbus-1.init (100%)
 rename meta/recipes-core/dbus/{dbus-1.4.0 => dbus-1.4.1}/tmpdir.patch (100%)
 delete mode 100644 meta/recipes-core/dbus/dbus_1.4.0.bb
 create mode 100644 meta/recipes-core/dbus/dbus_1.4.1.bb
 create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
 delete mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
 create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb


