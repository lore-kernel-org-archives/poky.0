Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC43D4C80FBE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 18:40:39 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Dec 2010 16:40:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,252,1291622400"; d="scan'208";a="641958306"
Received: from unknown (HELO localhost) ([10.255.13.230])
	by fmsmga002.fm.intel.com with ESMTP; 30 Dec 2010 16:40:39 -0800
Message-Id: <cover.1293755504.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Thu, 30 Dec 2010 16:31:44 -0800
Date: Thu, 30 Dec 2010 16:40:18 -0800
To: poky@yoctoproject.org
Subject: [PATCH 0/5] meta-rt: create a real-time layer
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
X-List-Received-Date: Fri, 31 Dec 2010 00:40:40 -0000

Add a real-time layer to build the linux-yocto preempt_rt kernel type for
specific machines. It also adds the rt-tests test suite. This series
adds qemux86-64 support (build and boot tested) as well as atom-pc, which
builds and creates the ext3 image, but the live image is missing the rootfs
for some reason.

Rather than continue to sit on these, I thought I'd get them out there while
I continue to try and sort out the atom-pc issue.

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


