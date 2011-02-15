Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C22484C80872
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 19:33:14 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2011 17:33:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,471,1291622400"; d="scan'208";a="657677920"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2011 17:33:07 -0800
Message-Id: <cover.1297734607.git.dongxiao.xu@intel.com>
Old-Date: Tue, 15 Feb 2011 09:50:07 +0800
Date: Tue, 15 Feb 2011  9:53:17 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] laverne: Fix Bug 683
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
X-List-Received-Date: Tue, 15 Feb 2011 01:33:14 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes laverne build Bug 683: There are 2 'Connection Manage' icons on qemumips/qemuarm desktop with Laverne build 20110121.

This bug is similar with Bug 506, which is fixed in upstream.

Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/laverne-bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/laverne-bugfix

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


