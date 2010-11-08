Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF84B4C80BCF;
	Mon,  8 Nov 2010 15:06:31 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA8L6T23028719;
	Mon, 8 Nov 2010 13:06:29 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: saul.wold@intel.com, rpurdie@linux.intel.com
Date: Mon,  8 Nov 2010 16:06:38 -0500
Message-Id: <1289250400-16953-1-git-send-email-bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PULL] misc (minor) kernel fixes
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
X-List-Received-Date: Mon, 08 Nov 2010 21:06:32 -0000

In preparation for some larger kernel changes being sent 
for review, I'm clearing my queue of a few minor changes
that were done while working on the 0.9 release.

The uImage one is particularly interesting, since it was
a fix for the default beagle board uImage being completely
unbootable. 

The force revisions is largely cosmetic, but it is used
by my upcoming kernel dev layer and I think it is more in
the spirit of other variables that are set from local
configurations.

The following changes since commit e417aa98e4b4170f4b4aaf805cc8ea20f8593604:
  Bruce Ashfield (1):
        wrs_meta: add USB options for wacom tablet support

are available in the git repository at:

  ssh://git@git.pokylinux.org/poky-contrib zedd/kernel-fixes

Bruce Ashfield (2):
      linux-wrs: rename force_revisions and allow override
      kernel: prefer the kernel produced uImage

 meta/classes/kernel.bbclass                |    4 +++-
 meta/recipes-kernel/linux/linux-wrs_git.bb |    6 +++---
 2 files changed, 6 insertions(+), 4 deletions(-)


