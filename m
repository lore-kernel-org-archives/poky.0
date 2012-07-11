Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1161E00343
	for <poky@yoctoproject.org>; Wed, 11 Jul 2012 07:50:10 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q6BEo7YT004617;
	Wed, 11 Jul 2012 07:50:08 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 11 Jul 2012 10:49:49 -0400
Message-Id: <cover.1342017991.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto-3.0/meta-yocto: perf scripting fixes
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
X-List-Received-Date: Wed, 11 Jul 2012 14:50:10 -0000

Richard/Saul,

This is the update fo the 3.0 kernel for the yocto reference BSPs to
pickup Tom's perf scripting fixes.

The bigger problem of getting the references all to the 3.4 kernel is
being addressed separately, which will reduce the load of doing this work
three times ..

Cheers,

Bruce

cc: Tom Zanussi <tom.zanussi@intel.com>

The following changes since commit fcdfa310117415fdc5ed49b93f2c4695fde8b084:

  linux-yocto/3.0: perf scripting support (2012-07-11 10:39:57 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto-3.0/meta-yocto: perf script fixes

 .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

-- 
1.7.5.4


