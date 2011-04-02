Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEA754C80050;
	Fri,  1 Apr 2011 22:25:37 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p323PUNx012561;
	Fri, 1 Apr 2011 20:25:31 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri,  1 Apr 2011 23:26:38 -0400
Message-Id: <cover.1301714584.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, yocto@yoctoproject.org
Subject: [PATCH 0/2] linux-yocto/meta: update kernel meta-data
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
X-List-Received-Date: Sat, 02 Apr 2011 03:25:38 -0000

Richard,

patch 1 in this series is a re-send of a previous change, since
it was still on the queue and it was worth keeping it in history
in order with the second change.

The second patch addresses [YOCTO #945], and the patch itself
has the following:

[ 
  As part of the update to 2.6.37 existing configuration and
  patches from the -stable kernel were left in place as a reminder
  of features and configuration carry forward. A lot of these
  reminders are no longer necessary and the kernel meta data
  needs to be cleaned up to prepare for activities related to
  newer kernels.

  Also in this meta update are configuration changes to allow
  common_pc derived BSPs to have a clean baseline configuration.
]

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  linux-yocto/crownbay: update configuration
  linux-yocto/meta: cleanup and streamline kernel meta data

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


