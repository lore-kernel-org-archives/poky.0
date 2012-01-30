Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93E08E00306
	for <poky@yoctoproject.org>; Mon, 30 Jan 2012 12:16:14 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(yow-bashfiel-d3.ottawa.windriver.com [128.224.147.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0UKGBNF019675;
	Mon, 30 Jan 2012 12:16:11 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 30 Jan 2012 15:16:08 -0500
Message-Id: <cover.1327954069.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: dvhart@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] linux-yocto/meta-yocto: 3.2.2 and 3.0.18
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
X-List-Received-Date: Mon, 30 Jan 2012 20:16:14 -0000

Richard/Saul,

This is a follow up to the oe-core pull request that I just sent.
Once that merges, this can go into yocto to add 3.0.18 and 3.2.2
support for the emulated boards.

Testing and updating of the hardware reference platforms will follow
in the next few days.

Cheers,

Bruce

The following changes since commit 879bdbb8ec2c01eaca6ac6769b39cf7bdd9d6a2d:

  linux-yocto/meta-yocto: update to v3.0.18 + features (2012-01-30 14:35:20 -0500)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  linux-yocto/meta-yocto: create linux-yocto 3.2 bbappend
  meta-yocto/poky.conf: set qemu* preferred linux-yocto version to 3.2

 meta-yocto/conf/distro/poky.conf                   |   12 ++++++------
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   19 +++++++++++++++++++
 2 files changed, 25 insertions(+), 6 deletions(-)
 create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend

-- 
1.7.4.1


