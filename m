Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63AB84C811A8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 23:18:17 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 21:18:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,359,1288594800"; d="scan'208";a="637351346"
Received: from unknown (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2010 21:18:08 -0800
Message-Id: <cover.1292563626.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 17 Dec 2010 13:27:06 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1][PULL] Remove the connman-gnome desktop icon
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
X-List-Received-Date: Fri, 17 Dec 2010 05:18:17 -0000

This pull request remove the connman-gnome desktop icon, since
connman-applet is launched by autostart, and connman-properties
should be started through toolbar.

This fixes [BUGID #506]

Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  connman-gnome: Remove the applet and properties desktop icons

 .../connman/connman-gnome/connman-applet.desktop   |   10 -----
 .../remove-connman-property-desktop-file.patch     |   42 ++++++++++++++++++++
 .../connman/connman-gnome_0.5.bb                   |    9 +---
 3 files changed, 44 insertions(+), 17 deletions(-)
 delete mode 100644 meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
 create mode 100644 meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch


