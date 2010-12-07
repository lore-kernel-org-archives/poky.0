Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3A9F4C8110D
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 06:43:54 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2010 04:43:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="865414468"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2010 04:43:53 -0800
Message-Id: <cover.1291716364.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 7 Dec 2010 18:06:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/3] add license checksum
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
X-List-Received-Date: Tue, 07 Dec 2010 12:43:55 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/12-07-license
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/12-07-license

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (3):
  x11-common: add license checksum
  xserver-nodm-init: add license checksum
  xserver-xf86-config: add license checksum

 .../x11-common/x11-common/gplv2-license.patch      |  353 ++++++++++++++++++++
 meta/recipes-graphics/x11-common/x11-common_0.1.bb |    7 +-
 .../x11-common/xserver-nodm-init.bb                |    9 +-
 .../xserver-nodm-init/gplv2-license.patch          |  353 ++++++++++++++++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bb        |    1 +
 5 files changed, 718 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-graphics/x11-common/x11-common/gplv2-license.patch
 create mode 100644 meta/recipes-graphics/x11-common/xserver-nodm-init/gplv2-license.patch


