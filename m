Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDD0F4C800A3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 11:19:18 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p2AHJB5j011728;
	Thu, 10 Mar 2011 09:19:12 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Thu, 10 Mar 2011 12:20:42 -0500
Message-Id: <cover.1299776753.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: openembedded-core@lists.openembedded.org, poky@yoctoproject.org,
	saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: update to 2.6.37.3
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
X-List-Received-Date: Thu, 10 Mar 2011 17:19:19 -0000

The kernel.org stable guys finished up 2.6.37.3 and there's
still time to get this into 1.0, and we definitely want the
list of fixes contained in this udpate. The changes slide
in no problem, and I've completed build and boot test on
all the emulated platforms.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: update to 2.6.37.3

 .../conf/distro/include/poky-default-revisions.inc |   24 ++++++++++----------
 1 files changed, 12 insertions(+), 12 deletions(-)


