Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BCC04C80815
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 22:04:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Nov 2010 20:04:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,264,1288594800"; d="scan'208";a="861761635"
Received: from unknown (HELO localhost) ([10.255.13.200])
	by fmsmga001.fm.intel.com with ESMTP; 26 Nov 2010 20:04:05 -0800
Message-Id: <cover.1290830448.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 26 Nov 2010 22:00:48 -0600
To: poky@yoctoproject.org
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] Add sysprof package
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
X-List-Received-Date: Sat, 27 Nov 2010 04:04:06 -0000

Add sysprof, one of the tracing/profiling tools mentioned in the Yocto v1.0
tracing/profiling tools list posted here:

https://lists.yoctoproject.org/pipermail/yocto/2010-November/000281.html

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/sysprof
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/sysprof

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  sysprof: new package

 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
 meta/recipes-kernel/sysprof/sysprof_git.bb         |   18 ++++++++++++++++++
 3 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/sysprof/sysprof_git.bb


