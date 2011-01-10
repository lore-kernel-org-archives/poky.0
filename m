Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 428C34C810C1;
	Mon, 10 Jan 2011 11:28:37 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0AHSZGT008979;
	Mon, 10 Jan 2011 09:28:35 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 10 Jan 2011 12:30:47 -0500
Message-Id: <cover.1294680187.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/5] linux-yocto: consolidated pull request
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
X-List-Received-Date: Mon, 10 Jan 2011 17:28:37 -0000

It looks like some of my last pull request didn't make it
to master, so I've repeated it here. Patches 4/5 have already
been sent:

  kernel-yocto: pass the build directory to configme
  routerstation: disable command line overrides

The remaining three changes are new and are:

 - A merge from Darren to update the default 2.6.37 configs
   to enable the debug/ftrace configs we need.

 - A change to make board descriptions generic. These are
   transparent to nearly everyone, but any new BSPs will be
   described with: KARCH, KMACHINE and KTYPE which are more
   generic variables and used internally during kernel
   configuration. They are differnet from yocto/poky variables
   on purpose, since the kernel tree can be cloned and used 
   distinctly from any build system.

 - And finally an update to 2.6.37 with a port of the alternate
   RPC ports patch which reinstates usermode NFS support to
   2.6.37.

Also out of interest, the routerstation pro and fsl-mpc8315e-rdb
have all been booted against 2.6.37 and will follow shortly. 
Next up are feature merges (lttng, etc) to match the -stable 
kernel functionality.

Cheers,

Bruce


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (5):
  kernel-yocto: pass the build directory to configme
  routerstation: disable command line overrides
  linux-yocto: update SRCREV to pickup debug/ftrace config changes
  kern-tools: create generic variables for platform/board/kernel
  linux-yocto: update to 2.6.37

 meta/classes/kernel-yocto.bbclass                  |    2 +-
 .../conf/distro/include/poky-default-revisions.inc |   28 ++++++++++----------
 2 files changed, 15 insertions(+), 15 deletions(-)


