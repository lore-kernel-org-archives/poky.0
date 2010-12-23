Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 889D44C80039
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:13:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Dec 2010 07:13:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="586677732"
Received: from unknown (HELO localhost) ([10.239.48.201])
	by orsmga002.jf.intel.com with ESMTP; 23 Dec 2010 07:13:18 -0800
Message-Id: <cover.1293117709.git.jiajun.xu@intel.com>
From: Jiajun Xu <jiajun.xu@intel.com>
Old-Date: Thu, 23 Dec 2010 23:21:49 +0800
Date: Thu, 23 Dec 2010 23:26:18 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] qemuimage-testlib: Add check for existence of image and correctness of ip address
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
X-List-Received-Date: Thu, 23 Dec 2010 15:13:35 -0000

Fixes [BUGID #612, #611]

We need to check the existence of to-be tested image in sanity test. Meanwhile, we should check the ip address to make sure it is valid.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---


Jiajun Xu (1):
  qemuimage-testlib: Add check for existence of image and correctness
    of ip address

 scripts/qemuimage-testlib |   23 +++++++++++++++++++++++
 1 files changed, 23 insertions(+), 0 deletions(-)


