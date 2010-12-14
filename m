Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7ADFE4C811ED
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 01:03:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Dec 2010 23:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,340,1288594800"; d="scan'208";a="361335005"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 23:03:38 -0800
Message-Id: <cover.1292310588.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 14 Dec 2010 15:09:48 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1][PULL] gst-ffmpeg recipe upgrade
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
X-List-Received-Date: Tue, 14 Dec 2010 07:03:58 -0000

Hi Richard,

I removed the "PATH_prepend" from recipe since the latest gst-ffmpeg
install program will not contain "-s" except explicitly called with
"make install-strip".

Please help to review and pull, thanks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  gst-ffmpeg: upgrade to version 0.10.11

 .../gst-ffmpeg-0.10.1/configure_fix.patch          |   13 -----
 .../gstreamer/gst-ffmpeg-0.10.1/no_beos.patch      |   55 --------------------
 .../gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff   |   14 +++++
 .../gstreamer/gst-ffmpeg_0.10.1.bb                 |   35 ------------
 .../gstreamer/gst-ffmpeg_0.10.11.bb                |   35 ++++++++++++
 5 files changed, 49 insertions(+), 103 deletions(-)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/configure_fix.patch
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/no_beos.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb


