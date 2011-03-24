Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E52054C800B7
	for <poky@yoctoproject.org>; Thu, 24 Mar 2011 13:32:57 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2OIWi3N016762;
	Thu, 24 Mar 2011 11:32:44 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Thu, 24 Mar 2011 14:37:58 -0400
Message-Id: <cover.1300991725.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [PATCH 0/1] linux-yocto: update to v2.6.37.5
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
X-List-Received-Date: Thu, 24 Mar 2011 18:32:58 -0000

I missed 2.6.37.4 when I was away for a week, so now that
2.6.37.5 is out, we can grab both of them a single update.

As the patch indicates, I built and booted this on all the
relevant qemu targets.

This is against meta master, if I've got it in the wrong place,
just let know.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: update to 2.6.37.5

 .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
 1 files changed, 12 insertions(+), 12 deletions(-)


