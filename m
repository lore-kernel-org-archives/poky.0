Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A8684C80A4F
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 17:00:36 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Mar 2011 15:00:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,266,1297065600"; d="scan'208";a="609250340"
Received: from unknown (HELO localhost) ([10.255.12.102])
	by orsmga002.jf.intel.com with ESMTP; 04 Mar 2011 15:00:20 -0800
Message-Id: <cover.1299279540.git.sgw@linux.intel.com>
Old-Date: Fri, 4 Mar 2011 14:59:00 -0800
Date: Fri, 04 Mar 2011 15:00:19 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 0/1] Fix up task-poky-lsb
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
X-List-Received-Date: Fri, 04 Mar 2011 23:00:36 -0000

From: Saul Wold <sgw@linux.intel.com>

Richard:

I removed a patch from the LSB, but did not fix up 
the task-poky-lsb (it was not factored correctly orignally).
So this patch fixes task-poky-lsb.bb.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/oe-core
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/oe-core

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (1):
  task-poky-lsb: Remove new eglibc-* packages

 meta/recipes-extended/tasks/task-poky-lsb.bb |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)


