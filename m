Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73F2A4C803D6
	for <poky@yoctoproject.org>; Fri,  3 Jun 2011 11:23:19 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p53GMjSQ018121;
	Fri, 3 Jun 2011 09:22:45 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri,  3 Jun 2011 12:21:41 -0400
Message-Id: <cover.1307117927.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: update SRCREVs
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
X-List-Received-Date: Fri, 03 Jun 2011 16:23:19 -0000

Richard/Saul,

Here's the meta-yocto part of the recent kernel updates.

This is a consolidated pull request for the past weeks
changes to Linux yocto. There are a few tweaks to BSP
configs, a new BSP branch (fishriver) and more alignment 
with the feature mix the 1.0 (2.6.34) kernel tree (linux-omap
as a base merge).

I've built and booted this on all the appropriate 
qemu targets, and built for the beagleboard, intel boards,
etc.

I'll be away from a computer screen from now until
for all day Saturday, so if this waits to merge, it
is fine by me.

The following changes since commit b8fc7bf2a884f722ac15d781d5f8f844544f39d1:
  Bruce Ashfield (1):
        linux-yocto: update target/meta SRCREVs

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update target/meta SRCREVs

 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)


