Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 280C64C80B6B
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 16:06:55 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 14:06:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,238,1288594800"; d="scan'208";a="629313934"
Received: from unknown (HELO localhost) ([10.255.13.161])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 14:06:54 -0800
Message-Id: <cover.1290463270.git.tom.zanussi@intel.com>
From: Tom Zanussi <tom.zanussi@intel.com>
Date: Mon, 22 Nov 2010 16:01:10 -0600
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
X-List-Received-Date: Mon, 22 Nov 2010 22:06:55 -0000

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
 meta/recipes-kernel/blktrace/blktrace_git.bb       |   22 ++++++++
 4 files changed, 78 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
 create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb


