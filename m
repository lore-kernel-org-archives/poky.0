Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0D2EF4C80BEF
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 13:55:55 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,325,1288594800"; d="scan'208";a="582557212"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.164])
	by orsmga002.jf.intel.com with ESMTP; 10 Dec 2010 11:55:55 -0800
Message-Id: <cover.1292010816.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 11:53:36 -0800
To: sgw@linux.intel.com,poky@yoctoproject.org
Subject: [PATCH 0/5] Recipe variable cleanup - typos mostly
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
X-List-Received-Date: Fri, 10 Dec 2010 19:55:56 -0000

An investigation into undocumented variables revealed a few typos
in common recipe variables. The following patches address those for:

DESCRIPTION
PARALLEL_MAKE
LIC_FILES_CHKSUM

The latter uncovered a few bad md5sums and other typos, those are addressed
as well.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/var-cleanup
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/var-cleanup

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (5):
  Correct DESCRIPTION typos in various recipes
  image-swab: Correct PARALLEL_MAKE typo
  Correct LIC_FILES_CHKSUM typos
  tcl: Correct license checksums
  linux-libc-headers: Correct license checksum

 meta/classes/image-swab.bbclass                    |    2 +-
 .../initrdscripts/initramfs-boot_1.0.bb            |    2 +-
 .../initrdscripts/initramfs-live-boot_1.0.bb       |    2 +-
 .../initrdscripts/initramfs-live-install_1.0.bb    |    2 +-
 meta/recipes-core/tasks/task-poky-sdk.bb           |    2 +-
 meta/recipes-devtools/nasm/nasm_2.07.bb            |    2 +-
 meta/recipes-devtools/quilt/quilt.inc              |    2 +-
 meta/recipes-devtools/tcltk/tcl_8.5.9.bb           |   12 ++++++------
 meta/recipes-extended/groff/groff_1.18.1.4.bb      |    2 +-
 meta/recipes-gnome/tasks/task-poky-sdk-gmae.bb     |    2 +-
 .../tasks/task-poky-standalone-gmae-sdk-target.bb  |    2 +-
 .../linux-libc-headers/linux-libc-headers.inc      |    2 +-
 12 files changed, 17 insertions(+), 17 deletions(-)


