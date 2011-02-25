Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5023A4C800AC;
	Fri, 25 Feb 2011 13:28:49 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1PJSl4i017352;
	Fri, 25 Feb 2011 11:28:47 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri, 25 Feb 2011 14:29:58 -0500
Message-Id: <cover.1298662054.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <y>
References: <y>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: update to 2.6.37.2
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
X-List-Received-Date: Fri, 25 Feb 2011 19:28:49 -0000

Richard/Saul,

The commit header says it all here:

Fixes [BUGID: 773]

This consolidated SRCREV update addresses the following items:

  - updates to 2.6.37.2
  - updates the routerstation pro configuration for USB mass storage
  - merges the PERF no scripting patch into the kernel tree

I built this for all boards, and boot tested arm/x86* no 
issues were found.

I did this change on master, if the release branch needs this
and it can't be cherry picked. Let me know.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: update to 2.6.37.2

 .../conf/distro/include/poky-default-revisions.inc |   26 ++++++++++----------
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    3 +-
 2 files changed, 14 insertions(+), 15 deletions(-)


