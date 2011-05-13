Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 767614C80120
	for <poky@yoctoproject.org>; Fri, 13 May 2011 12:27:50 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 May 2011 10:27:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,365,1301900400"; d="scan'208";a="642379214"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 13 May 2011 10:27:50 -0700
Message-Id: <cover.1305307513.git.nitin.a.kamble@intel.com>
Old-Date: Fri, 13 May 2011 10:25:13 -0700
Date: Fri, 13 May 2011 10:27:49 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 0/1] fix a bitbake error for current master branch
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
X-List-Received-Date: Fri, 13 May 2011 17:27:50 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Currently master branch is broken with this error:
MACHINE=qemuarm bitbake core-image-sato-sdk
...
NOTE: Runtime target 'glibc-utilsglibc-utils' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['glibc-utilsglibc-utils']
NOTE: Runtime target 'task-core-nfs-server' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['task-core-nfs-server', 'glibc-utilsglibc-utils']


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: nitin/misc
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc

Thanks,
    Nitin A Kamble <nitin.a.kamble@intel.com>
---


Nitin A Kamble (1):
  task-core-nfs: fix a bitbake error

 meta/recipes-core/tasks/task-core-nfs.bb |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.3.4


