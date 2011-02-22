Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3904C4C800B2
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 01:59:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Feb 2011 23:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="889959198"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 21 Feb 2011 23:59:27 -0800
Message-Id: <cover.1298362595.git.dongxiao.xu@intel.com>
Old-Date: Tue, 22 Feb 2011 16:16:35 +0800
Date: Tue, 22 Feb 2011 16:19:58 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Fix bug 615 and 616
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
X-List-Received-Date: Tue, 22 Feb 2011 07:59:32 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

libowl-av uses playbin2 instead of original playbin, which needs
uridecodebin library from gst-plugins-base. This pull request adds its
support.

This fixes [BUGID #615] and [BUGID #616].

Please help to review and pull. Thanks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  gst-meta-base: add uridecodebin library support

 .../gstreamer/gst-meta-base_0.10.bb                |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)


