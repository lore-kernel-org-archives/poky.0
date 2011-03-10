Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B0B54C80852
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 19:20:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Mar 2011 17:20:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,293,1297065600"; d="scan'208";a="895676659"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2011 17:20:03 -0800
Message-Id: <cover.1299719736.git.dongxiao.xu@intel.com>
Old-Date: Thu, 10 Mar 2011 09:15:36 +0800
Date: Thu, 10 Mar 2011  9:19:48 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Fix bug 783
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
X-List-Received-Date: Thu, 10 Mar 2011 01:20:04 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes [YOCTO #783], which is a parallel make issue of telepathy-python.
Please help to review and pull.

Tested 10 rounds of telepathy-python build with no error occurred.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  telepathy-python: Fix parallel make issue.

 .../telepathy-python-0.15.19/parallel_make.patch   |   40 ++++++++++++++++++++
 .../telepathy/telepathy-python_0.15.19.bb          |    5 +-
 2 files changed, 43 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-connectivity/telepathy/telepathy-python-0.15.19/parallel_make.patch


