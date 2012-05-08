Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B669E0030B
	for <poky@yoctoproject.org>; Tue,  8 May 2012 07:52:35 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(yow-bashfiel-l1.corp.ad.wrs.com [128.224.145.171])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q48EqWsT018399;
	Tue, 8 May 2012 07:52:32 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue,  8 May 2012 10:52:29 -0400
Message-Id: <cover.1336488562.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: update branch mappings
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
X-List-Received-Date: Tue, 08 May 2012 14:52:35 -0000

Richard/Saul,

This is a follow up to the oe-core pull request that I just sent. It
updates the 3.0 yocto recipe to have explicit branch mappings (so they'll
work with the new tools).

Merge this after the oe-core changes are in place, or bad things will 
happen :)

Cheers,

Bruce

The following changes since commit 18a93648e7927a33bcaa3a7210fdee4ff5669b3b:

  kern-tools: integrate minor fixes (2012-05-08 10:18:56 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-dev-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-dev-yocto

Bruce Ashfield (1):
  meta-yocto/linux-yocto-3.0: update branch mappings for new tools

 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   10 ++++++----
 1 files changed, 6 insertions(+), 4 deletions(-)

-- 
1.7.5.4


