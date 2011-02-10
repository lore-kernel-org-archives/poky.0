Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 237E14C80053
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 08:23:43 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Feb 2011 06:23:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="386888449"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 10 Feb 2011 06:23:39 -0800
From: Yu Ke <ke.yu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 10 Feb 2011 22:25:41 +0800
Message-Id: <cover.1297344409.git.ke.yu@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/2] mesa 7.10: add missing dependency makedepend
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
X-List-Received-Date: Thu, 10 Feb 2011 14:23:43 -0000

the last upgrade of mesa 7.10 introduce a depdency of makedepend,
which however is not listed in the recipe, thus cause do_configure
failure, both in mesa-dri_7.10 and mesa-xlib_7.10.

this patch set add the missing dependency to resolev this issue.
this patch set has been tested by building mesa from scratch in
qemux86, qemuarm and qemumips

one lesson I got is: always build from scratch for testing.
last time the mesa 7.10 upgrade patch is tested in incremental build,
thus the missing depdency is not showed up.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/mesa-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/mesa-fix

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (2):
  mesa-xlib-7.10: add missing dependency makedepend
  mesa-dri-7.10: add missing dependency makedepend

 meta/recipes-graphics/mesa/mesa-dri_7.10.bb  |    4 ++--
 meta/recipes-graphics/mesa/mesa-xlib_7.10.bb |    4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)


