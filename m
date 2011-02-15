Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9AB7D4C8006D;
	Tue, 15 Feb 2011 13:07:46 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1FJ74Fr015571;
	Tue, 15 Feb 2011 11:07:04 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 15 Feb 2011 14:07:28 -0500
Message-Id: <cover.1297796707.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: add jasperforest BSP and fix lttng NMI bug
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
X-List-Received-Date: Tue, 15 Feb 2011 19:07:47 -0000

Richard/Saul,

During the introduction of the jasperforest BSP, a lttng
issues was picked up with NMI tracing. The upstream (and
our solution) is to revert that commit.

This change updates the meta repo for jasperforest and pushes
out the nmi revert to all BSPs.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/jasperforest
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/jasperforest

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: add jasperforest BSP and fix lttng NMI bug

 .../conf/distro/include/poky-default-revisions.inc |   27 +++++++++----------
 1 files changed, 13 insertions(+), 14 deletions(-)


