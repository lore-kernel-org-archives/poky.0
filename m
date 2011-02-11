Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E357B4C800AB
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 02:52:09 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Feb 2011 00:52:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,454,1291622400"; d="scan'208";a="886512812"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 11 Feb 2011 00:52:08 -0800
Message-Id: <cover.1297415188.git.dongxiao.xu@intel.com>
Old-Date: Fri, 11 Feb 2011 17:06:28 +0800
Date: Fri, 11 Feb 2011 17:11:36 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/2][PULL] Fix Bug 603
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
X-List-Received-Date: Fri, 11 Feb 2011 08:52:10 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Saul,

This pull request fixes [BUGID #603], please help to review and pull.

Actually there are two bugs inside:

1) wpa_supplicant is not launched by default.
2) Even if manually launch wpa_supplicant, wifi interface still couldn't be enabled.

Some points to fix this issue:

1) Using new dbus interface in wpa_supplicant: "fi.w1.wpa_supplicant1"
2) Enable nl802.11 support in wpa_supplicant.
3) Fix the dbus-daemon-launch-helper permission issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (2):
  wpa-supplicant: change dbus interface
  dbus: change owner and mode for dbus-daemon-launch-helper in postinst

 .../wpa-supplicant-0.7.3/defconfig-gnutls          |    5 +++--
 .../wpa-supplicant/wpa-supplicant-0.7.inc          |    2 +-
 .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
 meta/recipes-core/dbus/dbus.inc                    |    4 +++-
 meta/recipes-core/dbus/dbus_1.4.1.bb               |    2 +-
 5 files changed, 9 insertions(+), 6 deletions(-)


