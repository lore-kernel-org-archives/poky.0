Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCB264C800A5;
	Wed,  2 Feb 2011 11:08:21 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p12H8Hp2022426;
	Wed, 2 Feb 2011 09:08:17 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed,  2 Feb 2011 12:11:21 -0500
Message-Id: <cover.1296666481.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org, yocto@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: BSP updates
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
X-List-Received-Date: Wed, 02 Feb 2011 17:08:22 -0000

Richard/Saul,

Here's the update for the sugarbay and beagleboard BSPs. To make the sugarbay
inhert common-pc-64 generic config/changes/fixes it has been
branched in the kernel as yocto/standard/common-pc-64/sugarbar, as
a result, we'll bump the common-pc-64 to be yocto/standard/common-pc-64/base.

I've built the common-pc-64, sugarbay and beagleboard here. Branch
renames and creations have been pushed to the repos.

This commit also stages lttng for a single board qemux86, but more
will follow by the end of day.

cc'ing Tom and Darren, since they both have changes pending on this
making it into the tree.

cc: Darren Hart <dvhart@linux.intel.com>
cc: Tom Zanussi <tom.zanussi@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/bsp
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/bsp

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: BSP updates

 .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
 2 files changed, 13 insertions(+), 13 deletions(-)


