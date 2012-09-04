Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B419E00344
	for <poky@yoctoproject.org>; Tue,  4 Sep 2012 08:35:09 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q84FZ5SP008607;
	Tue, 4 Sep 2012 08:35:06 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Tue,  4 Sep 2012 11:35:04 -0400
Message-Id: <cover.1346772644.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto/meta-yocto: update SRCREVs to 3.4.9, unionfs, perf and cfg
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
X-List-Received-Date: Tue, 04 Sep 2012 15:35:09 -0000

Richard/Saul,

This is a sync for the meta-yocto boards to match what qemu* has in
oe-core. I'm doing more build testing here, but I wanted to get my
queue pushed out, since there's only so many board combos I can 
build myself.

I don't expect any issues, but obviously, I'm around to fix anything
that goes off the rails.

Cheers,

Bruce

The following changes since commit fc1c6360e80b1d094a5b618cb7aeabe0700a4971:

  linux-yocto-rt: update to 3.4.9-rt17 (2012-09-04 11:13:36 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto/meta-yocto: update SRCREVs to 3.4.9, unionfs, perf and cfg

 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.7.5.4


