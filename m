Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62A494C800A0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 11:55:30 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2UGsiPS024272;
	Wed, 30 Mar 2011 09:54:45 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 30 Mar 2011 12:55:13 -0400
Message-Id: <cover.1301503818.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: dvhart@linux.intel.com, poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Subject: [PATCH 0/2] linux-yocto: update to 2.6.37.6 and consolidate changes
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
X-List-Received-Date: Wed, 30 Mar 2011 16:55:30 -0000

Another minor update to the 2.6.37 kernel (which has almost
run it's course for updates and will go into maintenance
mode shortly) to 2.6.37.6.

The other patch in this series merges some out of tree configuration
(profiling/latency) and pulls in the EMGD update to stage it for
more BSPs.

Built and boot tested on all currently supported emulations.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  linux-yocto/qemux86-64: enable profiling and latency
  linux-yocto: update base to 2.6.37.6

 .../conf/distro/include/poky-default-revisions.inc |   26 ++++++++++----------
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    4 ---
 2 files changed, 13 insertions(+), 17 deletions(-)


