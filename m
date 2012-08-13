Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EABBAE00718
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 12:09:10 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7DJ96F3017715;
	Mon, 13 Aug 2012 12:09:07 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 13 Aug 2012 15:08:37 -0400
Message-Id: <cover.1344884790.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: 3.4.7, BSPs and fixes
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
X-List-Received-Date: Mon, 13 Aug 2012 19:09:11 -0000

Richard/Saul,

Here's an update to the meta-yocto reference BSPs that is stacked
on the same base as the oe-core change I just sent.

We have routerstation pro updates, 3.4.7 changes, systemap prep
patches and configuration updates.

Cheers,

Bruce

The following changes since commit 4a06d873360678cdb3be1773e88e5a90e9e7e798:

  linux-yocto/3.4: BSP, uprobes, config and cleanups (2012-08-09 15:58:51 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto/3.4: BSP, uprobes, config and cleanups

 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

-- 
1.7.5.4


