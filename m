Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83D224C80039;
	Mon, 17 Jan 2011 15:55:03 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0HLt0dF017296;
	Mon, 17 Jan 2011 13:55:01 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 17 Jan 2011 16:57:29 -0500
Message-Id: <cover.1295300980.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/3] linux-yocto: consolidated pull request
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
X-List-Received-Date: Mon, 17 Jan 2011 21:55:03 -0000

Richard/Saul,

This pull request contains three changes on top of the previously
sent changes that are still pending:

 linux-yocto: enable arch ARM config settings for KARCH based boards
 linux-yocto-stable: add atom-pc preempt_rt support
 linux-yocto: add systemtap config to -stable and -dev kernels

But I wanted to send these anyway, since them sitting on my disk
here isn't helping anyone.

The first commit: 

linux-yocto: update validate_branches to detected invalid commit IDs

Addresses a problem that Richard ran into when invalid commit IDs
are used for SRCREVs. I tested this while fixing the ARM boot 
issues.

The second commit:

linux-yocto: streamline new BSP creation

Is self explanitory, as is the commit message. With this change you
can throw a previously unknown machine at the yocto kernel and have
a resonable first effort at booting the board and creating an
environment for development.

And finally:

linux-yocto: beagleboard enablement

Enables the beagleboard for 2.6.37. The patch itself has the details.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (3):
  linux-yocto: beagleboard enablement
  linux-yocto: streamline new BSP creation
  linux-yocto: update validate_branches to detected invalid commit IDs

 meta/classes/kernel-yocto.bbclass  |   37 ++++++++++++++++++++---------------
 meta/conf/machine/beagleboard.conf |    6 ++--
 2 files changed, 24 insertions(+), 19 deletions(-)


