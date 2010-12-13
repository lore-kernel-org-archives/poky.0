Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9F1F4C80048;
	Sun, 12 Dec 2010 23:40:27 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBD5eOSn026351;
	Sun, 12 Dec 2010 21:40:25 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com, saul.wold@intel.com
Date: Mon, 13 Dec 2010 00:41:45 -0500
Message-Id: <cover.1292218710.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 0/1] qemuppc: fix 2.6.37 build failure
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
X-List-Received-Date: Mon, 13 Dec 2010 05:40:28 -0000

Somehow the ppc32 irq routines were only partially updated
to 2.6.37. I'll have to check later to see what happened, since
these were all built and booted here. 

The fix is simple enough, here's the update for the SRCREV
that gets qemuppc building again.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  qemuppc: update 2.6.37 SRCREV

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


