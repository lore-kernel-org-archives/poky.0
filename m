Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D9604C8043A
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 02:02:20 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Mar 2011 00:02:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,276,1297065600"; d="scan'208";a="894508471"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by fmsmga001.fm.intel.com with ESMTP; 07 Mar 2011 00:00:33 -0800
Message-Id: <cover.1299254646.git.dongxiao.xu@intel.com>
Old-Date: Sat, 5 Mar 2011 00:04:06 +0800
Date: Mon, 07 Mar 2011 16:00:22 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] fix bug 779
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
X-List-Received-Date: Mon, 07 Mar 2011 08:02:20 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes bug 779, please help to review and pull.

After rootless X is enabled, connman-gnome is run under xuser,
so connman need to grant dbus access to that user.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  connman: add xuser to the dbus permission list

 .../connman-0.65/add_xuser_dbus_permission.patch   |   21 ++++++++++++++++++++
 meta/recipes-connectivity/connman/connman_0.65.bb  |    3 +-
 2 files changed, 23 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch


