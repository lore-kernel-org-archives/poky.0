Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B6E44C800A3;
	Fri,  4 Mar 2011 15:57:31 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p24LvSN8000308;
	Fri, 4 Mar 2011 13:57:29 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Fri,  4 Mar 2011 16:59:13 -0500
Message-Id: <cover.1299275720.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: update routerstationpro and mpc8315e-rdb configuration
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
X-List-Received-Date: Fri, 04 Mar 2011 21:57:32 -0000

Richard/Saul,

Fixes [YOCTO #733, YOCTO #766, YOCTO: #801]

Our board configs were missing some values, this addresses
VFAT, USB and RTC for these two boards. I've sent the patch
against master, since the right branch wasn't completely
clear at the time of writing this up. Please cherry pick it
into the appropriate branch.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: update machine configurations

 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)


