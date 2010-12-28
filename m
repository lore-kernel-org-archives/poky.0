Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01FEF4C81069;
	Tue, 28 Dec 2010 00:49:13 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBS6lMMT010673;
	Mon, 27 Dec 2010 22:47:22 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 28 Dec 2010 01:49:12 -0500
Message-Id: <cover.1293518497.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] linux-yocto: 2.6.37-rc7 & bsp branch fixups
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
X-List-Received-Date: Tue, 28 Dec 2010 06:49:14 -0000

The first patch of this pull request updates the BSP branches
to 2.6.37-rc7 (all qemu targets have been built and booted).

The second patch is an update to the handling of KMACHINE as it
maps to the branch that we should be building for a BSP. During
some investigation around the igep0020 and building it on top of
the beagle board branches, the kernel branch was coming through
processing as UNDEFINED. This lead to errors. I tracked it down
to the non-override variable being used in the python processing.
Patch 2/2 updates the processing to check overrrides and then
fall back. With this, I was able to build an igep0020 on top of
the 2.6.37-rc7 beagle board kernel branches.

Cheers,

Bruce

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  yocto-kernel: fix kmachine to deal with overrides
  yocto/meta: update to 2.6.37-rc7

 meta/classes/kernel-yocto.bbclass                  |    7 +++++--
 .../conf/distro/include/poky-default-revisions.inc |   20 ++++++++++----------
 2 files changed, 15 insertions(+), 12 deletions(-)


