Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57924E01448
	for <poky@yoctoproject.org>; Sun, 23 Sep 2012 20:23:28 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q8O3NQor012607;
	Sun, 23 Sep 2012 20:23:26 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun, 23 Sep 2012 23:22:56 -0400
Message-Id: <cover.1348456829.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto-bsp: update machine SRCREVs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Sep 2012 03:23:28 -0000

This is stacked on my just sent oe-core update, and the patch says it all again.
This is a bump of the hardware reference boards to match the content changes
that the oe-core BSPs have had for a few weeks.

Cheers,

Bruce


The following changes since commit 302d0a0fcb7450756a88775e9ffd01e1f834e67d:

  linux-yocto/3.4: Update fri2 and sys940x to emgd-1.14 (2012-09-23 23:03:51 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto/3.4: update machine SRCREVs

 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.7.5.4


