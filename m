Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AEA24C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 18:20:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2010 16:20:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,190,1291622400"; d="scan'208";a="688334735"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by orsmga001.jf.intel.com with ESMTP; 17 Dec 2010 16:20:21 -0800
Message-Id: <cover.1292630935.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 17 Dec 2010 16:08:55 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@intel.com
Subject: [PATCH 0/4] Initial Real-Time Linux recipes
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
X-List-Received-Date: Sat, 18 Dec 2010 00:20:22 -0000

This patch provides an initial set of PREEMPT_RT kernel and related
test and image recipes. The poky-image-minimal-rt image has been boot
tested on qemux86-64, and that is currently the only "COMPATIBLE_MACHINE".
More will be added as they are tested and confirmed working.

To make use of the rt-tests pacakge included in the new images, you need
to select linux-yocto-rt as the preferred kernel provider in your local.conf
or in a supported machine config. qemu.inc has been updated to allow for
the setting of the kernel provider in your local.conf.

It was my intent to have the image specify the require kernel, but things
don't really work that way. As such, it may be that having the images
just to add rt-tests is overkill and unecessarily pollutes the images
directory. I'm open to ideas on how to best go about building rt images.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/rt
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/rt

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (4):
  linux-yocto-rt: initial PREEMPT_RT recipe for the linux-yocto stable
    kernel
  rt-tests: add the PREEMPT_RT rt-tests testsuite and recipes-tests
    directory
  poky-image-minimal-rt*: Add initial real-time image recipes
  machine/qemu: Allow for users to override the preferred kernel
    version

 .../conf/distro/include/poky-default-revisions.inc |    3 +
 meta/conf/machine/include/qemu.inc                 |    2 +-
 .../images/poky-image-minimal-rt-directdisk.bb     |   15 ++++++
 .../images/poky-image-minimal-rt-live.bb           |   15 ++++++
 meta/recipes-core/images/poky-image-minimal-rt.bb  |   15 ++++++
 .../linux/linux-yocto-rt_stablegit.bb              |   47 ++++++++++++++++++++
 meta/recipes-tests/rt/rt-tests_git.bb              |   22 +++++++++
 7 files changed, 118 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-core/images/poky-image-minimal-rt-directdisk.bb
 create mode 100644 meta/recipes-core/images/poky-image-minimal-rt-live.bb
 create mode 100644 meta/recipes-core/images/poky-image-minimal-rt.bb
 create mode 100644 meta/recipes-kernel/linux/linux-yocto-rt_stablegit.bb
 create mode 100644 meta/recipes-tests/rt/rt-tests_git.bb

-- 
1.7.2.3


