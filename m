Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D83B34C81021;
	Tue, 11 Jan 2011 12:48:23 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0BImLGS017089;
	Tue, 11 Jan 2011 10:48:21 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 11 Jan 2011 13:50:39 -0500
Message-Id: <cover.1294771756.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: add routerstation pro and mpc8315e-rdb support
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
X-List-Received-Date: Tue, 11 Jan 2011 18:48:24 -0000

Just repeating the patch header here, since it is self explanitory:  
    
The routerstation pro and mpc8315e-rdb have been validated
on 2.6.37 so we can switch their preference to linux-yocto
and update the machine compatibility to add them to the support
list.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: add routerstation pro and mpc8315e-rdb support

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/machine/mpc8315e-rdb.conf                |    4 ++--
 meta/conf/machine/routerstationpro.conf            |    4 ++--
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)


