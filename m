Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D24B4C80B71;
	Mon, 15 Nov 2010 10:55:50 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAFGtmOU018032;
	Mon, 15 Nov 2010 08:55:49 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 15 Nov 2010 11:56:11 -0500
Message-Id: <cover.1289839979.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 0/3] kernel: rename supported kernel to linux-yocto
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
X-List-Received-Date: Mon, 15 Nov 2010 16:55:51 -0000

This is the first of several staged changes to update the
kernel support for the 1.0 release.

This series is step 1:

 - rename the supported kernel to 'linux-yocto' and update
   the boards, and recipes that have references to linux-wrs.

Step 2 will refactor the code into reusable blocks
Step 3 will do internal branch renames for scalability
Step 4 will launch and updated 2.6.34.x and 2.6.37-rcX kernel

This has been built and booted on the relevant boards. If I've
missed a reference to the existing kernel name, let me know
and I'll make those updates as well.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel-rename
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-rename

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (3):
  linux-wrs: rename to linux-yocto
  linux-yocto: update board configurations
  linux-yocto: update SRCREVs for linux-yocto rename

 meta-emenlow/conf/machine/emenlow.conf             |    2 +-
 ...x-wrs_git.bbappend => linux-yocto_git.bbappend} |    0
 .../conf/distro/include/poky-default-revisions.inc |   24 +++---
 meta/conf/machine/atom-pc.conf                     |    2 +-
 meta/conf/machine/beagleboard.conf                 |    2 +-
 meta/conf/machine/include/qemu.inc                 |    2 +-
 meta/conf/machine/mpc8315e-rdb.conf                |    2 +-
 meta/conf/machine/routerstationpro.conf            |    2 +-
 ...-wrs_git.bb => linux-libc-headers-yocto_git.bb} |    4 +-
 .../linux/{linux-wrs_git.bb => linux-yocto_git.bb} |   73 ++++++++++----------
 10 files changed, 57 insertions(+), 56 deletions(-)
 rename meta-emenlow/recipes/linux/{linux-wrs_git.bbappend => linux-yocto_git.bbappend} (100%)
 rename meta/recipes-kernel/linux-libc-headers/{linux-libc-headers-wrs_git.bb => linux-libc-headers-yocto_git.bb} (91%)
 rename meta/recipes-kernel/linux/{linux-wrs_git.bb => linux-yocto_git.bb} (74%)


