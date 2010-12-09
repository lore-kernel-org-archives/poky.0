Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 447BC4C8123C
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 02:46:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Dec 2010 00:46:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="582043188"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga002.jf.intel.com with ESMTP; 09 Dec 2010 00:46:23 -0800
Message-Id: <cover.1291884926.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 9 Dec 2010 16:55:26 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/4][PULL] update localfile LIC_FILES_CHKSUM information, Dongxiao Xu
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
X-List-Received-Date: Thu, 09 Dec 2010 08:46:24 -0000

Hi Saul,

This pull request updates some local file LIC_FILES_CHKSUM information, please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/license
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/license

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (4):
  makedevs: update LIC_FILES_CHKSUM info
  orinoco-conf: update LICENSE and LIC_FILES_CHKSUM info
  bluez-dtl1-workaround: update LIC_FILES_CHKSUM info
  hostap-conf: update LICENSE and LIC_FILES_CHKSUM info

 meta/recipes-bsp/hostap/files/COPYING.patch        |  344 ++++++++++++++++++++
 meta/recipes-bsp/hostap/hostap-conf_1.0.bb         |    8 +-
 meta/recipes-bsp/orinoco/files/COPYING.patch       |  344 ++++++++++++++++++++
 meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb       |    8 +-
 .../bluez/bluez-dtl1-workaround/COPYING.patch      |  344 ++++++++++++++++++++
 .../bluez/bluez-dtl1-workaround_1.0.bb             |    6 +-
 .../makedevs/makedevs-1.0.0/COPYING.patch          |  344 ++++++++++++++++++++
 meta/recipes-devtools/makedevs/makedevs_1.0.0.bb   |    6 +-
 8 files changed, 1394 insertions(+), 10 deletions(-)
 create mode 100644 meta/recipes-bsp/hostap/files/COPYING.patch
 create mode 100644 meta/recipes-bsp/orinoco/files/COPYING.patch
 create mode 100644 meta/recipes-connectivity/bluez/bluez-dtl1-workaround/COPYING.patch
 create mode 100644 meta/recipes-devtools/makedevs/makedevs-1.0.0/COPYING.patch


