Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 091D14C800A4;
	Tue,  1 Mar 2011 11:48:09 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p21Hm7Sm003330;
	Tue, 1 Mar 2011 09:48:07 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue,  1 Mar 2011 12:49:37 -0500
Message-Id: <cover.1299001559.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] u-boot: don't install host mkimage on non-native builds
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
X-List-Received-Date: Tue, 01 Mar 2011 17:48:11 -0000

Richar/Saul,

This fixes BUG 777.

The u-boot package clearly uses HOST_CC and HOST_STRIP to build
mkimage, so installing it into ${D}${bindir} for anything but the
native mkimage is a bad idea. The native recipe has its own install
function, so we can safely delete the entire do_install from 
u-boot.inc


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/uboot
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/uboot

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  u-boot: remove do_install from u-boot.inc

 meta/recipes-bsp/uboot/u-boot.inc |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)


