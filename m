Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B24374C800A4
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 10:45:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Mar 2011 08:45:06 -0800
Message-Id: <b7da2f$qk1a22@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,258,1297065600"; d="scan'208";a="893429826"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 08:45:06 -0800
Old-Date: Mon, 28 Feb 2011 15:27:49 -0600
Date: Thu, 03 Mar 2011 10:44:59 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1][KERNEL] emgd: add fb_info
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
X-List-Received-Date: Thu, 03 Mar 2011 16:45:07 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update to 2.6.37 upgrade, please pull.

Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib/tzanussi-crownbay-2.6.37-emgd-fbdev
  Branch: tzanussi-crownbay-2.6.37-emgd-fbdev
  Browse:
http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi-crownbay-2.6.37-emgd-fbdev

Tom Zanussi (1):
  emgd: add fb_info

 drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c |   12 +++++++++++-
 1 files changed, 11 insertions(+), 1 deletions(-)


