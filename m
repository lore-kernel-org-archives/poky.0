Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADFC2E00725
	for <poky@yoctoproject.org>; Thu, 11 Aug 2011 12:15:57 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7BJG3fu009374;
	Thu, 11 Aug 2011 12:16:03 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu, 11 Aug 2011 15:16:29 -0400
Message-Id: <cover.1313090099.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] meta-yocto: remove apm from beagleboard MACHINE_FEATURES
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
X-List-Received-Date: Thu, 11 Aug 2011 19:15:58 -0000

Richard/Saul,

Just repeating the patch contents here:

[
   Fixes [YOCTO: #916]

   apm is not something that we require in our yocto reference beagleboard
   BSP. It currently is listed in the MACHINE_FEATURES for the board, which
   leads to the runtime message:

     Starting advanced power management daemon: No APM support in kernel

   Since "/proc/apm" is not present. The board config we are targeting does
   not have the hardware to back this, so adding the emulation support
   wouldn't yield useful data. We'll leave this extended functionality for
   other more appropriate beagleboard configs 
]

The following changes since commit 0350be945877b61eb8125663887fd7ed1c3923ab:
  Khem Raj (1):
        scripts/runqemu: Make it run on ubuntu 11.10

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/apm
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/apm

Bruce Ashfield (1):
  meta-yocto: remove apm from beagleboard MACHINE_FEATURES

 meta-yocto/conf/machine/beagleboard.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


