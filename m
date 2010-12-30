Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2AFF34C80BD4
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 12:02:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 10:01:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="873088781"
Received: from unknown (HELO localhost) ([10.255.13.238])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 10:01:57 -0800
Message-Id: <cover.1293731824.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 30 Dec 2010 09:57:04 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/3] tracing: trace-cmd fixes and new kernelshark recipe
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
X-List-Received-Date: Thu, 30 Dec 2010 18:02:03 -0000

This series fixes some issues with the existing trace-cmd recipe and adds
a new recipe for kernelshark. The latter catches a bug in glib-2.0 which
is also addressed in this series with a patch from Open Embedded.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/tracing
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tracing

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (3):
  trace-cmd: fix cross-compilation
  glib-2.0: fix g_once_init_enter compile failure
  kernelshark: add ftrace gui viewer

 .../glib-2.0-2.27.3/g_once_init_enter.patch        |   13 ++++++++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb      |    6 +++-
 meta/recipes-kernel/trace-cmd/kernelshark_git.bb   |   21 ++++++++++++++++++++
 meta/recipes-kernel/trace-cmd/trace-cmd_git.bb     |   12 ++++------
 4 files changed, 43 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-core/glib-2.0/glib-2.0-2.27.3/g_once_init_enter.patch
 create mode 100644 meta/recipes-kernel/trace-cmd/kernelshark_git.bb


