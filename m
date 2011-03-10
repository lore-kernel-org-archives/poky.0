Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07FD84C800A0
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 22:36:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Mar 2011 20:36:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,294,1297065600"; d="scan'208";a="895725166"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2011 20:36:10 -0800
Message-Id: <cover.1299731632.git.dongxiao.xu@intel.com>
Old-Date: Thu, 10 Mar 2011 12:33:52 +0800
Date: Thu, 10 Mar 2011 12:35:55 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Fix bug 735
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
X-List-Received-Date: Thu, 10 Mar 2011 04:36:11 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes bug [YOCTO #735], which writes data in un-allocated memory.

Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bug-735
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bug-735

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  tinylogin: Fix rotate passwd check logic

 .../tinylogin-1.4/passwd_rotate_check.patch        |   39 ++++++++++++++++++++
 meta/recipes-core/tinylogin/tinylogin_1.4.bb       |    5 ++-
 2 files changed, 42 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/tinylogin/tinylogin-1.4/passwd_rotate_check.patch


