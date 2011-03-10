Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 611AE4C80050
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 00:02:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Mar 2011 22:02:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,294,1297065600"; d="scan'208";a="895748018"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2011 22:02:47 -0800
Message-Id: <cover.1299736614.git.dongxiao.xu@intel.com>
Old-Date: Thu, 10 Mar 2011 13:56:54 +0800
Date: Thu, 10 Mar 2011 14:02:32 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Fix bug 831
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
X-List-Received-Date: Thu, 10 Mar 2011 06:02:48 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes [YOCTO #831], please help to review and pull.

The main reason for gst-plugins-bad's compile error is due to a race
condition that, during librsvg's populate_sysroot, gst-plugins-bad's
do_compile will find some header files are still not exists though
its configure says the library is supported.

Add librsvg to gst-plugins-bad's dependency could solve this issue.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bug-831
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bug-831

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  gst-plugins-bad: add missing dependency librsvg

 .../gstreamer/gst-plugins-bad_0.10.20.bb           |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


