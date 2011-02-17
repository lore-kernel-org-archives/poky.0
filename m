Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BBF3D4C80093
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 01:05:04 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Feb 2011 23:05:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,484,1291622400"; d="scan'208";a="708842348"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 16 Feb 2011 23:05:03 -0800
Message-Id: <cover.1297927348.git.dongxiao.xu@intel.com>
Old-Date: Thu, 17 Feb 2011 15:22:28 +0800
Date: Thu, 17 Feb 2011 15:25:20 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Fix BUG 472
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
X-List-Received-Date: Thu, 17 Feb 2011 07:05:05 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes [BUGID #472], please help to review and pull.

User may still need to configure network even if all the services are not available currently, for example, setting online/offline mode, etc.

Enable the applet pop up menu even if the service status is unavailable.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  connman-gnome: Enable config menu popup even services are not
    available

 .../connman-gnome/applet_menu_popup_fix.patch      |   19 +++++++++++++++++++
 .../connman/connman-gnome_0.5.bb                   |    5 +++--
 2 files changed, 22 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-connectivity/connman/connman-gnome/applet_menu_popup_fix.patch


