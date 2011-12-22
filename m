Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4870BE0123C
	for <poky@yoctoproject.org>; Thu, 22 Dec 2011 10:12:35 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-145-187.ottawa.windriver.com [128.224.145.187])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBMICVs9014521;
	Thu, 22 Dec 2011 10:12:32 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu, 22 Dec 2011 13:12:17 -0500
Message-Id: <cover.1324577368.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] linux-yocto/meta-yocto: update routerstationpro & beagleboard
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
X-List-Received-Date: Thu, 22 Dec 2011 18:12:35 -0000

Richard/Saul,

This is a follow on to my oe-core pull request for fixes and updates
to the kernel. This change bumps the preferred kernel for the yocto
beagleboard and routerstationpro support to 3.0.x and fixes the -rt
support for the routerstationpro.

Cheers,

Bruce


The following changes since commit 906567682d06d8de1915b78ddf6128cd7bda6adc:

  linux-yocto: use PATH to locate kconf_check (2011-12-22 12:15:25 -0500)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  linux-yocto/meta-yocto: routerstationpro/beagleboard: add 3.0.x
    support
  linux-yocto-rt/meta-yocto: add routerstationpro support

 meta-yocto/conf/machine/beagleboard.conf           |    1 +
 meta-yocto/conf/machine/routerstationpro.conf      |    1 +
 .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++++----
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 4 files changed, 10 insertions(+), 8 deletions(-)

-- 
1.7.4.1


