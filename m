Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2ECB84C80815;
	Fri, 12 Nov 2010 12:40:11 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oACIe97O022416;
	Fri, 12 Nov 2010 10:40:09 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 12 Nov 2010 13:40:28 -0500
Message-Id: <cover.1289583673.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 0/2] linux-wrs: improve BSP-bootstrap process
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
X-List-Received-Date: Fri, 12 Nov 2010 18:40:11 -0000

I've been looking to improve the introduction of new boards
to the supported kernel for some time, and this takes us
most of the way there. Now with a machine.conf and a defconfig
you can create an initial working environment for BSP development
with no manual/workaround steps.

When creating a new BSP there isn't always an upstream branch
to validate SRCREVs against. Therefore, creating a new BSP
required extra manipulations of the git repository, even though
the branch for the build would be dynamically created.

To fix this, provide a fallback to the 'standard' branch if
WRMACHINE is not assigned a specific value for the given MACHINE.
The fallback saved in KBRANCH, and represents the branch that
we should build, even if no fallback is required. Some substeps
of the recipe have been updated to use KBRANCH rather than
enforcing MACHINE-KERNELTYPE.

There will be one additional change to not track the SRCREV
of wrs_meta as a fallback, but I wasn't able to get the 
standard branch tracking working, so I'm sending this as-is
for now.

I've tested this with my kernel development layer, and with
the stock meta directories only. Either way, I was able
to build and test a 'qemumips-variant' quickly.

Cheers,

Bruce

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  linux-wrs: implement BSP bootstrapping via fallback branches
  linux-wrs: BSP bootstrap

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-kernel/linux/linux-wrs_git.bb         |   40 ++++++++++++++++----
 2 files changed, 33 insertions(+), 9 deletions(-)


