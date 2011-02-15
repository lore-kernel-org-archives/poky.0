Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 283194C80872
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 18:55:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 16:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,471,1291622400"; d="scan'208";a="602657094"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 16:55:31 -0800
Message-Id: <cover.1297732450.git.dongxiao.xu@intel.com>
Old-Date: Tue, 15 Feb 2011 09:14:10 +0800
Date: Tue, 15 Feb 2011  9:15:41 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 0/1][PULL] Fix Bug 623
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
X-List-Received-Date: Tue, 15 Feb 2011 00:55:32 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

This pull request fixes Bug 623, which changes gypsy repo address.
Please help to review and pull.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/bugfix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/bugfix

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (1):
  gypsy: Change gypsy upstream repo address

 meta/recipes-connectivity/gypsy/gypsy_git.bb |   15 +++++++++++++++
 meta/recipes-connectivity/gypsy/gypsy_svn.bb |    9 ---------
 2 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-connectivity/gypsy/gypsy_git.bb
 delete mode 100644 meta/recipes-connectivity/gypsy/gypsy_svn.bb


