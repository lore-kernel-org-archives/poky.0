Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8908EE006AB
	for <poky@yoctoproject.org>; Wed, 24 Aug 2011 13:55:10 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7OKt6b4009323;
	Wed, 24 Aug 2011 13:55:06 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 24 Aug 2011 16:54:50 -0400
Message-Id: <cover.1314219098.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/3] linux-yocto/meta-yocto: consolidated kernel pull request
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
X-List-Received-Date: Wed, 24 Aug 2011 20:55:10 -0000

These changes build on top of the recently sent pull request for
the core machines.

This set of changes updates the preferred version for two more hardware
references (atom-pc/mpc8315) to 3.0 and ensure that the qemu machines
build 3.0 by default when meta-yocto is included. Let me know if my 
efforts to force the qemu machines to prefer 3.0 are correct, I wasn't
sure if there was a better approach.

The following changes since commit 6d0f1146b188f7efffc46477590b3b5615ae3035:

  linux-yocto/2.6.37: apmd + get time of day fixes (2011-08-24 16:33:07 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (3):
  meta-yocto: atom-pc/mpc8315e-rdb change preferred version to 3.0
  linux-yocto/meta-yocto: update SRCREVs for 3.0.3 and consolidated
    fixes
  meta-yocto: make qemu machines prefer linux-yocto_3.0

 meta-yocto/conf/distro/poky.conf                   |    5 +++++
 meta-yocto/conf/machine/atom-pc.conf               |    1 +
 meta-yocto/conf/machine/mpc8315e-rdb.conf          |    4 +++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   14 +++++++-------
 4 files changed, 16 insertions(+), 8 deletions(-)

-- 
1.7.4.1


