Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1183B4C8007E;
	Tue,  1 Feb 2011 11:22:06 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p11HM3Aj018181;
	Tue, 1 Feb 2011 09:22:03 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue,  1 Feb 2011 12:25:04 -0500
Message-Id: <cover.1296580694.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/2] linux-yocto: consolidated pull request
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
X-List-Received-Date: Tue, 01 Feb 2011 17:22:06 -0000

Richard/Saul,

I'm addressing a couple of bugs in this pull request.

Bug #685: for the mpc8315e-rdb boot issue. I'm going to revisit
this one, since changing the entry point shouldn't be making a
difference to this board's boot (by me looking at th code), but
it does seem to fix the problem according to the reporter.

Bug #692: kernel configuration audit information

After configuration of the kernel and audit is performed, and
has been for some time. This updates it to work with the 2.6.37
kernel and makes the output visible. You now get something like
this:

------------------------
NOTE: package linux-yocto-2.6.37+git0+e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99_0+a9d833fda90e2f1257888a97e092135610b5f259-r15: task do_kernel_configcheck: Started
NOTE: validating kernel configuration
The following Kconfig files no longer exist in this tree:
      drivers/ieee1394/Kconfig
      drivers/media/video/zc0301/Kconfig

This BSP sets 1 invalid/obsolete kernel options.
These config options are not offered anywhere within this kernel.
The full list can be found in your workspace at:
/home/bruce/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git0+e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99_0+a9d833fda90e2f1257888a97e092135610b5f259-r15/linux/meta/cfg/yocto/standard/common-pc/invalid.cfg

This BSP sets 6 kernel options that are possibly non-hardware related.
The full list can be found in your workspace at:
/home/bruce/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git0+e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99_0+a9d833fda90e2f1257888a97e092135610b5f259-r15/linux/meta/cfg/yocto/standard/common-pc/specified_non_hdw.cfg

WARNING: There were 2 hardware options requested that do not
         have a corresponding value present in the final ".config" file.
         This probably means you aren't getting the config you wanted.
The full list can be found in your workspace at:
/home/bruce/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git0+e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99_0+a9d833fda90e2f1257888a97e092135610b5f259-r15/linux/meta/cfg/yocto/standard/common-pc/mismatch.cfg

Waiting a second to make sure you get a chance to see this...
NOTE: package linux-yocto-2.6.37+git0+e8b8c1ae44932835f4f79e77180d3ce5e4b1ec99_0+a9d833fda90e2f1257888a97e092135610b5f259-r15: task do_kernel_configcheck: Succeeded
------------------------

This is actually telling us something useful, and actually is showing
me something that need to be fixed in the Kconfig classification for
2.6.37 .. so it has already proven to be useful data to expose
to the user!


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  mpc8315e-rdb: set UBOOT_ENTRYPOINT
  linux-yocto: export kernel configuration audit to the console

 meta/classes/kernel-yocto.bbclass                  |   17 +++++++++++------
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 meta/conf/machine/mpc8315e-rdb.conf                |    3 +++
 meta/recipes-kernel/linux/linux-yocto.inc          |    1 -
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    1 +
 5 files changed, 17 insertions(+), 9 deletions(-)

-- 
1.7.3.4


