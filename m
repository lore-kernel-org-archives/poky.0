Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1759C4C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 06:17:27 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Mar 2011 04:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="402820520"
Received: from unknown (HELO localhost) ([10.255.16.25])
	by azsmga001.ch.intel.com with ESMTP; 15 Mar 2011 04:17:26 -0700
Message-Id: <cover.1300185095.git.josh@linux.intel.com>
Old-Date: Tue, 15 Mar 2011 10:31:35 +0000
Date: Tue, 15 Mar 2011 11:17:20 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/1] Fix inclusion of meta-yocto
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
X-List-Received-Date: Tue, 15 Mar 2011 11:17:27 -0000

From: Joshua Lock <josh@linux.intel.com>

New build dirs created on the master branch are missing the meta-yocto
layer in the default bblayers.conf

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (1):
  bblayers.conf.sample: include meta-yocto in default layers

 meta-yocto/conf/bblayers.conf.sample |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

-- 
1.7.4


