Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3118E0070B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:52:39 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5CKqZx9026766;
	Tue, 12 Jun 2012 13:52:35 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue, 12 Jun 2012 16:52:14 -0400
Message-Id: <cover.1339534218.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] meta-yocto/linux-yocto: fix routerstationpro build
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
X-List-Received-Date: Tue, 12 Jun 2012 20:52:39 -0000

Richard/Saul,

I was trolling the autobuilder to confirm a local build failure and
noticed that the routerstationpro was failing build. 

Here's the fix for the build issue, simple enough to switch to a
different lock (since the old one was removed in the -stable
udpate).

Cheers,

Bruce

The following changes since commit 2b7bc8dbfeae528417e737ca139b749f24c11351:

  linux-yocto/3.4: create linux-yocto-rt recipe (2012-06-12 13:14:36 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto/linux-yocto: fix routerstationpro build

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.5.4


