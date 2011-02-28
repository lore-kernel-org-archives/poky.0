Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 310DF4C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 15:34:56 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 28 Feb 2011 13:34:55 -0800
Message-Id: <b7da2f$qiortu@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,242,1297065600"; d="scan'208";a="892104641"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2011 13:34:55 -0800
Old-Date: Mon, 28 Feb 2011 15:27:49 -0600
Date: Mon, 28 Feb 2011 15:34:52 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 0/1] emgd: add fb_info
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
X-List-Received-Date: Mon, 28 Feb 2011 21:34:56 -0000

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


