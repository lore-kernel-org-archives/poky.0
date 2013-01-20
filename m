Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF260E01485
	for <poky@yoctoproject.org>; Sat, 19 Jan 2013 21:35:14 -0800 (PST)
Received: from yow-bashfiel-d3.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0K5ZCnJ025265;
	Sat, 19 Jan 2013 21:35:12 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun, 20 Jan 2013 00:35:03 -0500
Message-Id: <cover.1358659970.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] linux-yocto/meta-yocto-bsps: update 3.4 kernel SRCREVs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 20 Jan 2013 05:35:15 -0000

Richard/Saul,

This is based on my latest 3.4 uprev series that I sent to oe-core a short while
ago. It updates the h/w reference BSPs to the 3.4.26/-rt37 and LTSI base that 
is in oe-core.

Cheers,

Bruce

The following changes since commit eeea5366e87e8f3ed5543bd6af72d36215b140ae:

  linux-yocto/3.4: update intel graphics features/configs (2013-01-20 00:22:23 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update hardware reference BSPs to 3.4.26 and
    LTSI

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

-- 
1.7.10.4


