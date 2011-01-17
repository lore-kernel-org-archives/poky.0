Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27E444C8085F;
	Mon, 17 Jan 2011 15:41:20 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HLfHVo015248;
	Mon, 17 Jan 2011 13:41:17 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 17 Jan 2011 16:43:48 -0500
Message-Id: <cover.1295300463.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: fix qemuarm boot issues
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
X-List-Received-Date: Mon, 17 Jan 2011 21:41:20 -0000

Saul/Richard,

Here's the fix for the recent qemuarm boot failures.
    
The switch to KARCH meant that the arch arm settings were not
being applied to all boards. This commit adds the new option
along with the existing one to cover all boards.

Build and boot tested on qemuarm, no issues here!

I'm sending this in isolation for cherry picking, but it will
also be part of a consoldated pull request for a series of 
kernel changes that will follow this shortly.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/arm-boot
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/arm-boot

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: enable arch ARM config settings for KARCH based boards

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


