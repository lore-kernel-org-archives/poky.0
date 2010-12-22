Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4FDCD4C811E0;
	Wed, 22 Dec 2010 00:26:18 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBM6OALO016700;
	Tue, 21 Dec 2010 22:24:10 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 22 Dec 2010 01:25:46 -0500
Message-Id: <cover.1292998230.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/3] linux-yocto: update to 2.6.37-rc6 and minor fixes
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
X-List-Received-Date: Wed, 22 Dec 2010 06:26:18 -0000

Richard/Saul,

This fixes BUGID #596 (mouse in qemuarm), through the fixing of
the linux-libc-headers-yocto recipe. The mouse was broken due to
tslib being out of sync with the kernel and not activating the
pointer. Having the matching kernel headers fixes this problem.

** Note: I saw some instances where I was getting fetcher/unpack
errors during my testing of this. I wasn't able to consistently
reproduce the error, so I wasn't able to conclusively determine if
it has anything to do with the libc-headers change. I recommend
that we watch this carefully and be prepared to revert as required
(revert the headers preference in qemu.inc).

This also updating the SRCREVs of the target branches in the linux-yocto
development kernel to point to 2.6.37-rc6 content.

And finally, this updates the meta branch to remove the rest of the _'s
from branch meta data. At this point branches have been switched
from _ to - and we are able to remove the old branch names. (which
I have done).

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (3):
  linux-yocto-stable: fix qemux86 branch name
  qemu: match kernel headers to preferred kernel
  linux-yocto: update to 2.6.37-rc6

 .../conf/distro/include/poky-default-revisions.inc |   26 ++++++++++----------
 meta/conf/machine/include/qemu.inc                 |    2 +-
 .../linux-libc-headers-yocto_git.bb                |   10 +++----
 .../recipes-kernel/linux/linux-yocto-stable_git.bb |    2 +-
 4 files changed, 19 insertions(+), 21 deletions(-)


