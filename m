Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB3174C80052
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 17:19:18 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Nov 2010 15:19:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,239,1288594800"; d="scan'208";a="680013208"
Received: from unknown (HELO localhost) ([10.255.13.161])
	by orsmga001.jf.intel.com with ESMTP; 22 Nov 2010 15:19:18 -0800
Message-Id: <cover.1290467442.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Mon, 22 Nov 2010 17:10:42 -0600
To: poky@yoctoproject.org
Subject: [PATCH 0/1] Add blktrace package
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
X-List-Received-Date: Mon, 22 Nov 2010 23:19:19 -0000

Add blktrace, one of the tracing/profiling tools mentioned in the Yocto v1.0
tracing/profiling tools list posted here:

https://lists.yoctoproject.org/pipermail/yocto/2010-November/000281.html

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: tzanussi/traceprof
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/traceprof

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>
---


Tom Zanussi (1):
  blktrace: new package

 .../conf/distro/include/poky-default-revisions.inc |    1 +
 meta/recipes-core/tasks/task-poky-tools.bb         |    3 +-
 .../blktrace/blktrace/blktrace-makefile.patch      |   53 ++++++++++++++++++++
 meta/recipes-kernel/blktrace/blktrace_git.bb       |   25 +++++++++
 4 files changed, 81 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
 create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb


