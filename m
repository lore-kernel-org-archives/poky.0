Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (unknown [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8AFB74C808E7
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 01:29:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Feb 2011 23:29:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,468,1291622400"; d="scan'208";a="388336397"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by azsmga001.ch.intel.com with ESMTP; 13 Feb 2011 23:29:35 -0800
Message-Id: <cover.1297669560.git.dongxiao.xu@intel.com>
Old-Date: Mon, 14 Feb 2011 15:46:00 +0800
Date: Mon, 14 Feb 2011 15:49:42 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH v2 0/2][PULL] Fix Bug 603
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
X-List-Received-Date: Mon, 14 Feb 2011 07:30:01 -0000

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

Changes from v1:
Set both CONFIG_CTRL_IFACE_DBUS and CONFIG_CTRL_IFACE_DBUS_NEW to 'y' in wpa_supplicant's configuration file.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (2):
  wpa-supplicant: change dbus interface
  dbus: change owner and mode for dbus-daemon-launch-helper in postinst

 .../wpa-supplicant-0.7.3/defconfig-gnutls          |    4 +++-
 .../wpa-supplicant/wpa-supplicant-0.7.inc          |    2 +-
 .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
 meta/recipes-core/dbus/dbus.inc                    |    4 +++-
 meta/recipes-core/dbus/dbus_1.4.1.bb               |    2 +-
 5 files changed, 9 insertions(+), 5 deletions(-)


