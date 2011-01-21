Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BBB34C8112E
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 08:12:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jan 2011 06:12:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,358,1291622400"; d="scan'208";a="879683701"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2011 06:12:11 -0800
Message-Id: <cover.1295619627.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Fri, 21 Jan 2011 22:20:27 +0800
Date: Fri, 21 Jan 2011 22:23:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] distro tracking fields update, edwin, Jan 21, 2011
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
X-List-Received-Date: Fri, 21 Jan 2011 14:12:13 -0000

Saul,
This is the update of distro tracking fileds after last iteration of upgrade.
Hope it can fix some false alarm of upgrade need.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/upgrade01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade01

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (1):
  distro tracking: Add more info for qemu, gdk-pixbuf...., after last
    interation of upgrade

 .../conf/distro/include/distro_tracking_fields.inc |  123 ++++++++++++--------
 1 files changed, 73 insertions(+), 50 deletions(-)


