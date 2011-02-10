Return-Path: <jiajun.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1378B4C80053
	for <poky@pokylinux.org>; Thu, 10 Feb 2011 08:43:33 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Feb 2011 06:43:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="886233953"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by fmsmga001.fm.intel.com with ESMTP; 10 Feb 2011 06:43:32 -0800
Message-Id: <cover.1297349671.git.jiajun.xu@intel.com>
Old-Date: Thu, 10 Feb 2011 22:54:31 +0800
Date: Thu, 10 Feb 2011 22:57:43 +0800
To: poky@pokylinux.org
From: Jiajun Xu <jiajun.xu@intel.com>
Subject: [PATCH 0/1] qemuimagetest: Rename test scenario file from *-sdk to *-sato-sdk
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
X-List-Received-Date: Thu, 10 Feb 2011 14:43:34 -0000

From: Jiajun Xu <jiajun.xu@intel.com>

Change the name of test scenario file from -sdk to -sato-sdk

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  qemuimagetest: Rename test scenario file from poky-image-sdk to
    poky-image-sato-sdk

 scripts/qemuimage-testlib                          |    6 ++++--
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 .../{poky-image-sdk => poky-image-sato-sdk}        |    0
 6 files changed, 4 insertions(+), 2 deletions(-)
 rename scripts/qemuimage-tests/scenario/qemuarm/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemumips/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemuppc/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemux86-64/{poky-image-sdk => poky-image-sato-sdk} (100%)
 rename scripts/qemuimage-tests/scenario/qemux86/{poky-image-sdk => poky-image-sato-sdk} (100%)


