Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12EE2E0142A
	for <poky@yoctoproject.org>; Thu,  7 Jun 2012 13:04:06 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q57K40C1019543;
	Thu, 7 Jun 2012 13:04:00 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  7 Jun 2012 16:03:40 -0400
Message-Id: <cover.1339099275.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/7] linux-yocto/meta-yocto: consolidated pull request
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
X-List-Received-Date: Thu, 07 Jun 2012 20:04:06 -0000

Richard/Saul,

This stack on top of my 9 patch series to oe-core. This patch series
does largely the same thing as the oe-core one:

  - removes 2.6.37
  - adds 2.6.34
  - updates recipes for machine / tool changes
  - make 3.4 the default kernel for qemu*

Cheers,

Bruce

The following changes since commit 987e5fba8f7b6f09cc96f4e3d2a5857209a45b7b:

  kern-tools: anchor KMACHINE test (2012-06-07 15:46:53 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (7):
  linux-yocto/meta-yocto: update to v3.0.32
  linux-yocto/meta-yocto: update to v3.2.18
  linux-yocto/meta-yocto: remove 2.6.37 bbappend
  linux-yocto/meta-yocto: add machine aliases for yocto BSPs
  linux-yocto/meta-yocto: introduce 3.4 bbappend
  linux-yocto/meta-yocto/3.2: fri2 and chiefriver machine updates
  meta-yocto: make 3.4 the default kernel for qemu*

 meta-yocto/conf/distro/poky.conf                   |   12 ++++++------
 .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
 .../linux/linux-yocto_2.6.37.bbappend              |   14 --------------
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   11 ++++-------
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   13 ++++---------
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   14 ++++++++++++++
 6 files changed, 31 insertions(+), 39 deletions(-)
 delete mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend

-- 
1.7.5.4


