Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22CE84C80050
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 03:47:19 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Dec 2010 01:47:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,244,1291622400"; d="scan'208";a="588023763"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2010 01:47:17 -0800
Message-Id: <cover.1293616099.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Wed, 29 Dec 2010 17:48:19 +0800
Date: Wed, 29 Dec 2010 17:54:33 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] check if lockfile is writable (bug 606 patch V2)
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
X-List-Received-Date: Wed, 29 Dec 2010 09:47:19 -0000

I've sent a patch for bug 606 before, which add sanity check for $DL_DIR.

After digging more, the root cause is hidden in bb.utils.lockfile(), so it
is more general to add check there. hence comes out the V2 patch for bug606.
please discard my V1 patch.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/bug606-v2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/bug606-v2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  bb.utils: check if lock file is writable, to fix bug 606

 bitbake/lib/bb/utils.py |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


