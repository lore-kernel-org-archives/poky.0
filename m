Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3263D4C8118C
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 21:22:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jan 2011 19:22:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="596873022"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 26 Jan 2011 19:22:45 -0800
Message-Id: <cover.1296098628.git.ke.yu@intel.com>
Old-Date: Thu, 27 Jan 2011 11:23:48 +0800
Date: Thu, 27 Jan 2011 11:26:16 +0800
To: poky@yoctoproject.org
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 0/1] xf86-video-omapfb upgrade v2
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
X-List-Received-Date: Thu, 27 Jan 2011 03:22:47 -0000

From: Yu Ke <ke.yu@intel.com>

revise the xf86-video-omapfb upgrade according to Kone's comments
add four patches from Kone to address various issues. see the patch for detail

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/upgrade2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/upgrade2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  xf86-video-omapfb: upgrade to 044617665d6737f4909aab96

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../xf86-video-omapfb/omap-blacklist-tv-out.patch  |   25 +++++++++++++++
 .../xf86-video-omapfb/omap-force-plain-mode.patch  |   23 ++++++++++++++
 .../omap-revert-set-CRTC-limit.patch               |   32 ++++++++++++++++++++
 .../omap-revert-set-virtual-size.patch             |   23 ++++++++++++++
 .../xorg-driver/xf86-video-omapfb_git.bb           |    4 ++
 6 files changed, 108 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch


