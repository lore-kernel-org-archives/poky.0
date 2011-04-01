Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0A2B4C80AC8
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 22:26:14 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Mar 2011 20:26:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,280,1299484800"; d="scan'208";a="904336476"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 31 Mar 2011 20:26:07 -0700
Message-Id: <cover.1301626661.git.dongxiao.xu@intel.com>
Old-Date: Fri, 1 Apr 2011 10:57:41 +0800
Date: Fri, 01 Apr 2011 11:24:27 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Add gstreamer souphttpsrc library
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
X-List-Received-Date: Fri, 01 Apr 2011 03:26:15 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Add gstreamer's souphttpsrc library which supports remote stream playing from http/https protocols.

This could solve the mp4 playing issue from mediatomb file server with regel.

You can refer to Yocto BUG #919 for reference.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  gst-meta-base: Support http/https remote streams

 .../gstreamer/gst-meta-base_0.10.bb                |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)


