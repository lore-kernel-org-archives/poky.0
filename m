Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B4A94C80039
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 00:12:37 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Dec 2010 22:12:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,323,1288594800"; d="scan'208";a="359739065"
Received: from unknown (HELO localhost) ([10.255.13.24])
	by azsmga001.ch.intel.com with ESMTP; 09 Dec 2010 22:12:36 -0800
Message-Id: <cover.1291961212.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 10 Dec 2010 00:06:52 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Add sysprof package, v2
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
X-List-Received-Date: Fri, 10 Dec 2010 06:12:37 -0000

Add sysprof, one of the tracing/profiling tools mentioned in the Yocto v1.0
tracing/profiling tools list posted here:

https://lists.yoctoproject.org/pipermail/yocto/2010-November/000281.html

v2 changes:

Fix compile errors for arm, mips and powerpc.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/sysprof
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/sysprof

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  Add sysprof, a system-wide performance profiler for Linux.

 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
 .../sysprof/files/ppc-macro-fix.patch              |   13 +++++++++++
 meta/recipes-kernel/sysprof/files/rmb-arm.patch    |   18 ++++++++++++++++
 meta/recipes-kernel/sysprof/files/rmb-mips.patch   |   20 ++++++++++++++++++
 meta/recipes-kernel/sysprof/sysprof_git.bb         |   22 ++++++++++++++++++++
 6 files changed, 75 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/sysprof/files/ppc-macro-fix.patch
 create mode 100644 meta/recipes-kernel/sysprof/files/rmb-arm.patch
 create mode 100644 meta/recipes-kernel/sysprof/files/rmb-mips.patch
 create mode 100644 meta/recipes-kernel/sysprof/sysprof_git.bb


