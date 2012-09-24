Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13040E0049F
	for <poky@yoctoproject.org>; Mon, 24 Sep 2012 13:31:38 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q8OKVZ3c001058;
	Mon, 24 Sep 2012 13:31:36 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 24 Sep 2012 16:31:05 -0400
Message-Id: <cover.1348518450.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, liang.li@windriver.com
Subject: [PATCH 0/1] linux-yocto-bsp: update the beagleboard preference to v3.4
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
X-List-Received-Date: Mon, 24 Sep 2012 20:31:38 -0000

Richard,

This has been asked for several times, and we've finally finished
our testing with the beagleboard on the 3.4 kernel .. although it
was already well known to work out of the box, it was worth
sitting on this a bit to double check.

build, boot and testing has been done on the beagleboard (revC) and
beagleboard XM. Existing functionality has been confirmed using
core-image-sato, and in particular mouse, keyboard and graphics have
been re-validated.

With this, all of the hardware reference boards are now on v3.4 and
we can prep v3.0 to be pushed off a cliff in yocto-1.4 :)

Cheers,

Bruce

cc: Liang Li <liang.li@windriver.com>

The following changes since commit a8341c40ffa945b862a7f880fb87679308584847:

  linux-yocto/3.4: update beagleboard configs (2012-09-24 16:03:00 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  beagleboard: update to 3.4

 meta-yocto-bsp/conf/machine/beagleboard.conf       |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
1.7.5.4


