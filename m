Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA9384C80872;
	Fri, 25 Feb 2011 21:31:08 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1Q3V6Ix027895;
	Fri, 25 Feb 2011 19:31:06 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 25 Feb 2011 22:32:19 -0500
Message-Id: <cover.1298690997.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: add crowbay BSP
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
X-List-Received-Date: Sat, 26 Feb 2011 03:31:09 -0000

Richard/Saul,

This adds the crownbay BSP infrastructure to the 2.6.37 kernel.
The BSP branch has already been pushed and this adds the config
data.

TomZ will use this for a baseline and for further testing, so
for now the change is harmless to any existing functionality.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: add crownbay BSP infrastructure

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


