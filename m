Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F3AC4C80872;
	Mon, 14 Feb 2011 15:42:22 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1ELgJTJ016342;
	Mon, 14 Feb 2011 13:42:19 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 14 Feb 2011 16:42:38 -0500
Message-Id: <cover.1297719595.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <y>
References: <y>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-libc-headers-yocto: disable device tree generation
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
X-List-Received-Date: Mon, 14 Feb 2011 21:42:22 -0000

Richard/Saul,

This fixed the error picked up overnight where the libc-headers
fails because there is no dtb to install.

Note: this could have been fixed by factoring out the include
of linux-dtb.inc into the individual recipes rather than by
modifying the libc-headers rule to set the KERNEL_DEVICETREE
to nothing. But the libc-headers is the exception and most 
any other recipe that includes linux-yocto.inc needs this
enabled, so I opted to leave the includes as they were.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-libc-headers-yocto: disable device tree generation

 .../linux-libc-headers-yocto_git.bb                |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)


