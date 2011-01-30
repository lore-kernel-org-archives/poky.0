Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 956034C80050
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 18:36:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Jan 2011 16:36:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="702014650"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga001.jf.intel.com with ESMTP; 29 Jan 2011 16:36:49 -0800
Message-Id: <cover.1296348480.git.dongxiao.xu@intel.com>
Old-Date: Sun, 30 Jan 2011 08:48:00 +0800
Date: Sun, 30 Jan 2011  8:53:31 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/2][PULL] glib-2.0 stable version and distro tracking update, Dongxiao, 2011/01/30
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
X-List-Received-Date: Sun, 30 Jan 2011 00:36:51 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Hi Saul,

This pull request introduces the glib-2.0 stable version 2.26.1.

Besides it updates the distro tracking fields and adds the manual check items for those recipes whose upstream version could not be found automatically.

Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/glib-2.0
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/glib-2.0

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (2):
  glib-2.0: Add stable vesion 2.26.1
  distro_tracking: update distro tracking fields

 .../conf/distro/include/distro_tracking_fields.inc |   23 +++++++--
 .../60_wait-longer-for-threads-to-die.patch        |    0
 .../configure-libtool.patch                        |    0
 .../g_once_init_enter.patch                        |    0
 .../glib-gettextize-dir.patch                      |    0
 meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb      |   16 ++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb      |    1 +
 .../libfm/libfm-0.1.14/add_missing.patch           |   50 --------------------
 meta/recipes-support/libfm/libfm_0.1.14.bb         |    5 +-
 9 files changed, 37 insertions(+), 58 deletions(-)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/60_wait-longer-for-threads-to-die.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/configure-libtool.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/g_once_init_enter.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/glib-gettextize-dir.patch (100%)
 create mode 100644 meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
 delete mode 100644 meta/recipes-support/libfm/libfm-0.1.14/add_missing.patch


