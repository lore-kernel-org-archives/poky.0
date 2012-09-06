Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCE2EE002AC
	for <poky@yoctoproject.org>; Thu,  6 Sep 2012 11:49:20 -0700 (PDT)
Received: from localhost.localdomain (yow-bashfiel-d2.wrs.com
	[128.224.146.167])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q86InIYn019604;
	Thu, 6 Sep 2012 11:49:18 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu,  6 Sep 2012 14:46:14 -0400
Message-Id: <cover.1346957046.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] meta-yocto-bsps: switch mpc8315e-rdb to ppce300c3 tuning
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
X-List-Received-Date: Thu, 06 Sep 2012 18:49:21 -0000

Richard/Saul,

Here's a follow on patch to the oe-core tuning change I just sent.
It switches the mpc8315e-rdb to a more specific tuning variant.

Builds have complete on core-image-minimal and sato, as well as
boot tests.

This fixes YOCTO: 1192

Cheers,

Bruce

The following changes since commit fb717d4aa26b125680f620254cde9eb97ef0708a:
  Bruce Ashfield (1):
        conf/tune: add tune-ppce300c3

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/mpc8315e-rdb
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/mpc8315e-rdb

Bruce Ashfield (1):
  mpc8315e-rdb: switch to ppce300c3 tuning

 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


