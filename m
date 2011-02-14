Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 44AD44C80546
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 17:15:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 15:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,470,1291622400"; d="scan'208";a="602631143"
Received: from unknown (HELO localhost) ([10.255.15.30])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 15:15:31 -0800
Message-Id: <cover.1297724957.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Feb 2011 17:09:17 -0600
Date: Mon, 14 Feb 2011 17:16:05 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 0/6] [Docs] - Fix to Yocto Project QS [BUGID# 631] and the kernel manual
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
X-List-Received-Date: Mon, 14 Feb 2011 23:15:32 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 631] - I added a tip in the section where we show a sample build.
The tip says that you can add 'INHERIT += "rm_work"' to the local.conf file
to help conserve disk space during a build.

Typo fixed in kernel manual.  Also, the example used to show how to condense 
and merge two BSPs into a second
SCM used a non-existant machine (cav_ebt5800-standard).  I replaced this
machine with 'common_pc_64-standard, which is a real machine. 

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: srifenbark/docs
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs

Thanks,
     <scott.m.rifenbark@intel.com>
---


Scott Rifenbark (6):
  documentation/kernel-manual/kernel-how-to.xml:  [BUGID# 597] Fixed
    common_pc
  documentation/yocto-project-qs/yocto-project-qs.xml: [BUGID# 631] -
    Added tip for saving disk space during a build.
  documentation/kernel-manual/kernel-how-to.xml: [BUGID# 597] Reversing
    common-pc-standard
  documentation/kernel-manual/kernel-how-to.xml: - Condense and merge
    example changed.
  documentation/kernel-manual/kernel-how-to.xml: Fixed type
  documentation/kernel-manual/kernel-how-to.xml: More changes to the
    creating BSP section.

 documentation/kernel-manual/kernel-how-to.xml      |   33 +++++++++++--------
 .../yocto-project-qs/yocto-project-qs.xml          |   11 ++++++
 2 files changed, 30 insertions(+), 14 deletions(-)


