Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10DEF4C800E5
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 15:51:42 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-217.ottawa.windriver.com [128.224.146.217])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6IKpaOE016605;
	Mon, 18 Jul 2011 13:51:37 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 18 Jul 2011 16:51:34 -0400
Message-Id: <cover.1311022118.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
Cc: paul.eggleton@linux.intel.com, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: update SRCREVs
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
X-List-Received-Date: Mon, 18 Jul 2011 20:51:43 -0000

Saul/Richard,

Here's another kernel pull request, this is stacked on top
of any pending requests that I have out.  If there's issues with
the exising ones, just let me know and I'll resend.

This new one Fixes [YOCTO #1227]

And contains this commit to the kernel.

[
    mpc8315erdb: fix ethernet at boot time

    Set the default MAC addresses for the two ethernet ports on the
    MPC8315E-RDB to the factory default values, allowing ethernet to come up
    correctly during boot without upgrading U-Boot.

    Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
]

cc: Paul Eggleton <paul.eggleton@linux.intel.com>

The following changes since commit cd10391398897106d2618c82bc7403353bb7d5f6:

  linux-yocto/meta-yocto: update SRCREVS (2011-07-15 13:08:59 -0400)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  linux-yocto: update mpc8315erdb SRCREV

 .../linux/linux-yocto_2.6.37.bbappend              |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

-- 
1.7.4.1


