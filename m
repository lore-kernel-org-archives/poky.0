Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 682104C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 19:26:43 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 17:26:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,341,1291622400"; d="scan'208";a="594265172"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 17:26:42 -0800
Message-Id: <cover.1295400220.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 18 Jan 2011 17:23:40 -0800
Date: Tue, 18 Jan 2011 17:26:42 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] fix one more recipe found broken after dso linking change
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
X-List-Received-Date: Wed, 19 Jan 2011 01:26:43 -0000

libzypp recipe is also broken with the dso linking change. This set has just a
fix for that. This is just pushed on top of the earlier dso changes contrib 
branch.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/dso_linking_change
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/dso_linking_change

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  libzypp: fix build issue with gcc dso linking change

 .../libzypp/dso_linking_change_build_fix.patch     |   50 ++++++++++++++++++++
 meta/recipes-extended/libzypp/libzypp_git.bb       |    5 +-
 2 files changed, 53 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/libzypp/libzypp/dso_linking_change_build_fix.patch

-- 
1.7.3.4


