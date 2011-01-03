Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A87FD4C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 11:48:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,267,1291622400"; d="scan'208";a="693119212"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
Message-Id: <cover.1294076797.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 3 Jan 2011 09:46:37 -0800
To: poky@yoctoproject.org,sgw@linux.intel.com
Subject: [PATCH 0/4 V2] tracing: trace-cmd fixes and new kernelshark recipe
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
X-List-Received-Date: Mon, 03 Jan 2011 17:48:44 -0000

This series fixes some issues with the existing trace-cmd recipe and adds
a new recipe for kernelshark. The latter catches a bug in glib-2.0 which
is also addressed in this series with a patch from Open Embedded.

V2: Update license and license files for trace-cmd and kernelshark

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/tracing
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tracing

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (4):
  trace-cmd: fix cross-compilation
  trace-cmd: license file updates
  glib-2.0: fix g_once_init_enter compile failure
  kernelshark: add ftrace gui viewer

 .../glib-2.0-2.27.3/g_once_init_enter.patch        |   13 +++++++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb      |    6 +++-
 meta/recipes-kernel/trace-cmd/kernelshark_git.bb   |   22 ++++++++++++++++++++
 meta/recipes-kernel/trace-cmd/trace-cmd_git.bb     |   17 +++++++--------
 4 files changed, 47 insertions(+), 11 deletions(-)
 create mode 100644 meta/recipes-core/glib-2.0/glib-2.0-2.27.3/g_once_init_enter.patch
 create mode 100644 meta/recipes-kernel/trace-cmd/kernelshark_git.bb


