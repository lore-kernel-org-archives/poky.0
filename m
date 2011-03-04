Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (unknown [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68B7F4C80A71
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 04:20:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Mar 2011 02:19:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,263,1297065600"; d="scan'208";a="609020022"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.47.161])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2011 02:19:50 -0800
Message-Id: <cover.1299232699.git.lei.mei@intel.com>
Old-Date: Fri, 4 Mar 2011 17:58:19 +0800
To: poky@yoctoproject.org
CC: 
From: Mei Lei <lei.mei@intel.com>
Subject: [PATCH 0/1]distrodata.bbclass: Get recipes tag info from git repo
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
Date: Fri, 04 Mar 2011 10:20:18 -0000
X-Original-Date: 五, 04  3月 2011 18:19:33 +0800
X-List-Received-Date: Fri, 04 Mar 2011 10:20:18 -0000

From: Mei Lei <lei.mei@intel.com>

To reduce a lot of unnecessary upgrade reminader for those recipes which use git repo, we change the version track via tag information instead of commit checksum information. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrodata.bbclass
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distrodata.bbclass

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distrodata.bbclass: Get git repo tag information

 meta/classes/distrodata.bbclass |   52 ++++++++++++++++++++++++++++++++------
 1 files changed, 43 insertions(+), 9 deletions(-)


