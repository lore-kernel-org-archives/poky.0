Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FEB84C80BD4
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:46:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="649623349"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PgEPY-0005ZL-Kr; Fri, 21 Jan 2011 18:40:08 +0800
Message-Id: <cover.1295605993.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Fri, 21 Jan 2011 18:33:13 +0800
Date: Fri, 21 Jan 2011 18:40:08 +0800
To: poky@yoctoproject.org
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, aleksandr.koltsoff@ebts.fi
Subject: [PATCH 0/5] improvements for util-linux, v2
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
X-List-Received-Date: Fri, 21 Jan 2011 10:46:06 -0000

change from v1:
 - merges the change introduced by Paul Eggleton
 - fix lscpu packaging (which is under GPLv3)

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

Thanks,
    Qing He
---


Paul Eggleton (2):
  gst-plugins-base: add util-linux to DEPENDS
  nfs-utils, e2fsprogs, mtd-utils, libsm: bump PR

Qing He (3):
  util-linux: separately packaging blkid and uuid
  util-linux: fix dangling symlinks
  util-linux: fix lscpu packaging

 .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
 meta/recipes-core/util-linux/util-linux.inc        |   30 ++++++++++++++++----
 meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    2 +-
 .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
 meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb       |    2 +-
 meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    2 +-
 .../gstreamer/gst-plugins-base_0.10.31.bb          |    4 +-
 7 files changed, 31 insertions(+), 13 deletions(-)


