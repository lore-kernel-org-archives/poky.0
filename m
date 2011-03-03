Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9E13F4C80050
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 06:01:50 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2011 04:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,258,1297065600"; d="scan'208";a="893348363"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.8])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2011 04:01:49 -0800
Message-Id: <cover.1299153379.git.edwin.zhai@intel.com>
Old-Date: Thu, 3 Mar 2011 19:56:19 +0800
Date: Thu, 03 Mar 2011 19:59:53 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 0/3] Bug fixes for 1.0 M4, Edwin, Mar 3, 2011
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
X-List-Received-Date: Thu, 03 Mar 2011 12:01:50 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Saul,
These are bug fixes for 456,751,781. Pls. have a look and pull.

Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/fix2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/fix2

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (3):
  x11vnc: Fix the start failure
  sato-icon-theme: Explictly use "Sato" as gtk icon theme
  gstreamer: install the sound card driver of es1370

 .../x11vnc/files/starting-fix.patch                |   18 ++++++++++++++++++
 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb      |    3 ++-
 .../gstreamer/gstreamer_0.10.31.bb                 |    3 +++
 .../sato-icon-theme/sato-icon-theme.inc            |    3 +++
 4 files changed, 26 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/x11vnc/files/starting-fix.patch


