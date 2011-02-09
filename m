Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B19014C80053;
	Wed,  9 Feb 2011 00:19:13 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p196JB5s014751;
	Tue, 8 Feb 2011 22:19:11 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  9 Feb 2011 01:22:27 -0500
Message-Id: <cover.1297232160.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/stable: streamline BSP processing
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
X-List-Received-Date: Wed, 09 Feb 2011 06:19:14 -0000

Richard/Saul,

The subject is a bit deceiving, since the 'streamlining' that I've been
working on for BSP / external board building for a while, actually
solves a lot of the SRCREV/race conditions that we've been seeing.

With the new fetcher and some factoring of the code, I've been able
to delete 99% of the anonymous python and simply the processing
for new BSPs.

To create a BSP against the yocto kernels all one must do is put
the variable YOCTO_KERNEL_EXTERNAL_BRANCH and indicate the branch
name that should be used. The tools and processing does the rest.

I built all existing boards, and bootstrapped a BSP against the
stable and devel yocto kernels while testing this. Everything
worked well.

Darren: I haven't touched the preempt_rt recipes (yet), but we
can streamline them as well.

This is the first step in some other refactoring and cleanups for
easier inclusion of the yocto kernel parts, but we'll let this
soak first before stacking more changes on top.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: streamline BSP bootstrapping

 meta/classes/kernel-yocto.bbclass                  |   71 +++-----------------
 .../conf/distro/include/poky-default-revisions.inc |    3 +-
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |   10 ++--
 meta/recipes-kernel/linux/linux-yocto.inc          |    4 +-
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    4 +
 5 files changed, 23 insertions(+), 69 deletions(-)


