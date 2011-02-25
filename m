Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1EDEE4C8004D
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 04:52:19 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2011 02:52:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,224,1297065600"; d="scan'208";a="661402573"
Received: from unknown (HELO localhost) ([10.255.16.236])
	by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2011 02:52:18 -0800
Message-Id: <cover.1298630947.git.josh@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 10:49:07 +0000
Date: Fri, 25 Feb 2011 10:52:12 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/2] Misc fixes
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
X-List-Received-Date: Fri, 25 Feb 2011 10:52:19 -0000

From: Joshua Lock <josh@linux.intel.com>

A couple of minor patches the first to fix a warning when parsing lexically
incorrect recipes and the second removes a warning during the standard build.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/misc

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (2):
  bitbake/codeparser: fix raising of ShellSyntaxError
  dropbear: add SRC_URI checksums

 bitbake/lib/bb/codeparser.py                |    4 ++--
 meta/recipes-core/dropbear/dropbear_0.52.bb |    3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

-- 
1.7.4


