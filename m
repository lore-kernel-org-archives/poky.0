Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DBA144C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 13:20:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jan 2011 11:20:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="376936307"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 19 Jan 2011 11:20:37 -0800
Message-Id: <cover.1295464737.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Wed, 19 Jan 2011 11:18:57 -0800
Date: Wed, 19 Jan 2011 11:20:35 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1] one more build fix related to dso linking change
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
X-List-Received-Date: Wed, 19 Jan 2011 19:20:40 -0000

Found out zipper was also failing to link due to the dso linking change in the gcc. It is fixed in this set.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/dso_linking_change
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/dso_linking_change

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  zypper: fix build issue with gcc dso linking change

 .../zypper/dso_linking_change_build_fix.patch      |   58 ++++++++++++++++++++
 meta/recipes-extended/zypper/zypper_git.bb         |    4 +-
 2 files changed, 60 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/zypper/zypper/dso_linking_change_build_fix.patch

-- 
1.7.3.4


