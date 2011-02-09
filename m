Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF6054C80053;
	Wed,  9 Feb 2011 00:23:54 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p196NqsQ015198;
	Tue, 8 Feb 2011 22:23:53 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  9 Feb 2011 01:27:07 -0500
Message-Id: <cover.1297232632.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/3] linux: factor dts/dtc/dtb handling into a specific include
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
X-List-Received-Date: Wed, 09 Feb 2011 06:23:55 -0000

Richard/Saul,

This fixes BUGID 610, and kicks off a bit of cleaning with the various
kernel include files. Patch 1/3 says it all:

[
The powerpc linux-yocto kernels were not creating dtb images
in the deploy directories. This was due to two problems:

  - the dtb generation rules were not being configured
  - the boards were not specifying a device tree in their config

This change addresses the first point by factoring out the
dtb generation routines into a new include that can be used by
multiple recipes.
]

With these changes I've built and generated a dtb for the 
mpc8315-rdb.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/dtb
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/dtb

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (3):
  linux: factor dts/dtc/dtb handling into a specific include
  dtc: add LIC_FILES_CHKSUM to dtc-native
  mpc8315-rdb: add dtb generation configuration

 meta/conf/machine/mpc8315e-rdb.conf       |    1 +
 meta/recipes-kernel/dtc/dtc-native_git.bb |    3 +++
 meta/recipes-kernel/linux/linux-dtb.inc   |   27 +++++++++++++++++++++++++++
 meta/recipes-kernel/linux/linux-yocto.inc |    1 +
 meta/recipes-kernel/linux/linux.inc       |   27 +--------------------------
 5 files changed, 33 insertions(+), 26 deletions(-)
 create mode 100644 meta/recipes-kernel/linux/linux-dtb.inc


