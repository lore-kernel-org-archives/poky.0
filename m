Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E74E4E011B2
	for <poky@yoctoproject.org>; Thu, 18 Aug 2011 22:26:28 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7J5QPYA005930;
	Thu, 18 Aug 2011 22:26:25 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 19 Aug 2011 01:26:19 -0400
Message-Id: <cover.1313731370.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] meta-yocto/linux-yocto updates
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
X-List-Received-Date: Fri, 19 Aug 2011 05:26:29 -0000

Richard/Saul,

These updates switch the mpc8315e-rdb and atom-pc to use the 3.0.3 
kernel as their default preference, and as such also update the
SRCREVs to 3.0.3 for these boards.

These are based on top of a similar set of changes destined for
linux-yocto in oe-core.

The following changes since commit 180e52d7b1b6754d91a98b09cb3d9ebe702feaec:

  linux-yocto: update SRCREVs for 3.0.3 (2011-08-19 01:02:06 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  meta-yocto: atom-pc/mpc8315e-rdb change preferred version to 3.0
  linux-yocto/meta-yocto: update SRCREVs for 3.0.3

 meta-yocto/conf/machine/atom-pc.conf               |    1 +
 meta-yocto/conf/machine/mpc8315e-rdb.conf          |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   14 +++++++-------
 3 files changed, 10 insertions(+), 7 deletions(-)

-- 
1.7.4.1


