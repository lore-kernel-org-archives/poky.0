Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8D884C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 17:25:37 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 15:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,340,1291622400"; d="scan'208";a="698142759"
Received: from unknown (HELO localhost) ([10.255.14.100])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2011 15:25:36 -0800
Message-Id: <cover.1295393078.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Tue, 18 Jan 2011 15:24:38 -0800
Date: Tue, 18 Jan 2011 15:25:31 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/5] meta-rt: create a real-time (PREEMPT_RT) layer
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
X-List-Received-Date: Tue, 18 Jan 2011 23:25:38 -0000

Add a real-time layer to build the linux-yocto preempt_rt kernel type for
specific machines. It also adds the rt-tests test suite. This series
adds qemux86-64 support as well as atom-pc. Both have been boot tested.

There has been much discussion surrounding where real-time support should be
in the repositories. Most recently we discussed including it as part of the
main poky repository. I think this makes the most sense as the rt kernels are
built from the same kernel repositories as the other linux-yocto kernels.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/meta-rt
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/meta-rt

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (5):
  meta-rt: Initial PREEMPT_RT layer and kernel recipes
  meta-rt/rt-tests: add the PREEMPT_RT rt-tests testsuite and
    recipes-tests directory
  meta-rt/poky-image-*rt: Add initial PREEMPT_RT image recipes
  machine/qemu: Allow for users to override the preferred kernel
    version
  meta-rt: atom-pc support

 meta-rt/conf/layer.conf                            |   23 +++++++++++
 meta-rt/images/poky-image-minimal-rt-directdisk.bb |   15 +++++++
 meta-rt/images/poky-image-minimal-rt-live.bb       |   15 +++++++
 meta-rt/images/poky-image-minimal-rt.bb            |   12 ++++++
 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb |   40 ++++++++++++++++++++
 meta-rt/recipes-tests/rt-tests_git.bb              |   22 +++++++++++
 meta/conf/machine/include/qemu.inc                 |    2 +-
 7 files changed, 128 insertions(+), 1 deletions(-)
 create mode 100644 meta-rt/conf/layer.conf
 create mode 100644 meta-rt/images/poky-image-minimal-rt-directdisk.bb
 create mode 100644 meta-rt/images/poky-image-minimal-rt-live.bb
 create mode 100644 meta-rt/images/poky-image-minimal-rt.bb
 create mode 100644 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
 create mode 100644 meta-rt/recipes-tests/rt-tests_git.bb


