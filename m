Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8D5B4C80335
	for <poky@yoctoproject.org>; Wed, 25 May 2011 05:43:53 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2011 03:43:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,266,1304319600"; 
   d="scan'208";a="1292504"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.162])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2011 03:43:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 25 May 2011 11:42:52 +0100
Message-Id: <cover.1306319204.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH 0/4] [meta-yocto] tidy up bbappends after oe-core changes
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
X-List-Received-Date: Wed, 25 May 2011 10:43:54 -0000

bbappends in meta-yocto need to be kept up-to-date with respect to changes
in oe-core.

The following changes since commit 32a4e746273c3c7d3dd0f13b745bc0679cadaa44:

  codeparser.py: fix syntax error in exception handling (2011-05-24 17:16:47 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib paule/tidy-bbappends
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/tidy-bbappends

Paul Eggleton (4):
  clutter: remove obsolete 1.4 bbappend from meta-yocto
  qt4: remove obsolete 4.6.3 bbappend from meta-yocto
  task-poky-sdk-gmae: rename bbappends to task-core-sdk-gmae in
    meta-yocto
  uclibc: rename bbappend in meta-yocto to match version in oe-core

 ...clibc_0.9.30.1.bbappend => uclibc_git.bbappend} |    0
 ...k-gmae.bbappend => task-core-sdk-gmae.bbappend} |    0
 ... task-core-standalone-gmae-sdk-target.bbappend} |    0
 .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ----
 .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 --
 5 files changed, 0 insertions(+), 6 deletions(-)
 rename meta-yocto/recipes-core/uclibc/{uclibc_0.9.30.1.bbappend => uclibc_git.bbappend} (100%)
 rename meta-yocto/recipes-gnome/tasks/{task-poky-sdk-gmae.bbappend => task-core-sdk-gmae.bbappend} (100%)
 rename meta-yocto/recipes-gnome/tasks/{task-poky-standalone-gmae-sdk-target.bbappend => task-core-standalone-gmae-sdk-target.bbappend} (100%)
 delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
 delete mode 100644 meta-yocto/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend

-- 
1.7.4.1


