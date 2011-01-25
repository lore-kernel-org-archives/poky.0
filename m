Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 817494C806DA;
	Tue, 25 Jan 2011 09:56:17 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0PFuF8F021859;
	Tue, 25 Jan 2011 07:56:15 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 25 Jan 2011 10:59:00 -0500
Message-Id: <cover.1295970827.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] perf: hard-code NO_LIBPERL/NO_LIBPYTHO
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
X-List-Received-Date: Tue, 25 Jan 2011 15:56:17 -0000

We already had this fix in the 2.6.37 kernel (and it is staged
temporarily there) so this is the same change for the -stable
kernel to fix the perf build error reported by Gary this morning.

I went ahead and merged this to the kernel tree directly, since
we may not loop back and do another fix for this on in the -stable
kernel.

Compiled for atom-pc/beagleboard and routerstationpro.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel-stable
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-stable

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto/stable: perf: hard-code NO_LIBPERL/NO_LIBPYTHO

 .../conf/distro/include/poky-default-revisions.inc |   18 +++++++++---------
 1 files changed, 9 insertions(+), 9 deletions(-)


