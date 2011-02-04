Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA5764C800A8;
	Thu,  3 Feb 2011 22:28:20 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p144SHUB029369;
	Thu, 3 Feb 2011 20:28:18 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Thu,  3 Feb 2011 23:31:24 -0500
Message-Id: <cover.1296793636.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: uprev lttng to 2.6.37
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
X-List-Received-Date: Fri, 04 Feb 2011 04:28:20 -0000

Richard/Saul,

Although I could have attempted to push this SRCREV update
myself, this close to feature freeze I want it to be throttled/controlled
by the overall view of master.

This is the import/update to lttng 0.242 for the 2.6.37 kernel, with
this we are a step closer to a feature match to 0.9 and userspace
lttng tools now have a base to be updated.

I've built and booted with this enabled for all architectures and
I haven't run into any problems yet. I'm waiting on some extra tests,
but this is good enough to be staged at this point.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: uprev lttng to 2.6.37-lttng-0.242

 .../conf/distro/include/poky-default-revisions.inc |   22 ++++++++++----------
 1 files changed, 11 insertions(+), 11 deletions(-)


