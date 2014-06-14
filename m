Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAE9BE00BFD; Fri, 13 Jun 2014 18:48:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB35E00BEC
	for <poky@yoctoproject.org>; Fri, 13 Jun 2014 18:47:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5E1lmX7024710
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 Jun 2014 18:47:49 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.196) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.169.1; Fri, 13 Jun 2014 18:47:47 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 14 Jun 2014 09:47:21 +0800
Message-ID: <1402710444-2334-1-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [PATCH v2 0/3] meta-yocto-bsp: enable the jffs2 for mpc8315e-rdb board
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
X-List-Received-Date: Sat, 14 Jun 2014 01:48:04 -0000
Content-Type: text/plain

Hi,

v2:
Add the example about booting from jffs2 root in README.hardware

v1:
This tries to enable the jffs2 support for the mpc8315e-rdb board. I have
tested the jffs2 with the following steps and it worked perfectly.

1. root@mpc8315e-rdb:~# cat /proc/mtd
dev:    size   erasesize  name
mtd0: 00800000 00010000 "fe000000.flash"
mtd1: 00100000 00004000 "u-boot"
mtd2: 00300000 00004000 "kernel"
mtd3: 01c00000 00004000 "fs"

2. root@mpc8315e-rdb:~# flash_eraseall  /dev/mtd3
flash_eraseall has been replaced by `flash_erase <mtddev> 0 0`; please use it
Erasing 16 Kibyte @ 1bec000 -- 99 % complete flash_erase: Skipping bad block at 01bf0000
flash_erase: Skipping bad block at 01bf4000
flash_erase: Skipping bad block at 01bf8000
flash_erase: Skipping bad block at 01bfc000
Erasing 16 Kibyte @ 1bfc000 -- 100 % complete 

3. root@mpc8315e-rdb:~# flashcp core-image-minimal-mpc8315e-rdb.jffs2 /dev/mtd3

4. Then boot with a jffs2 rootfs

5. root@mpc8315e-rdb:~# cat /proc/cmdline
root=/dev/mtdblock3 rootfstype=jffs2 console=ttyS0,115200
root@mpc8315e-rdb:~# 
root@mpc8315e-rdb:~# mount
rootfs on / type rootfs (rw)
/dev/root on / type jffs2 (rw,relatime)
devtmpfs on /dev type devtmpfs (rw,relatime,size=59136k,nr_inodes=14784,mode=755)
proc on /proc type proc (rw,relatime)
sysfs on /sys type sysfs (rw,relatime)
debugfs on /sys/kernel/debug type debugfs (rw,relatime)
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
tmpfs on /var/volatile type tmpfs (rw,relatime)
devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620)

The following changes since commit 8e0c54cd0e82ffe120f84f495101cd29e6fd06bf:

  bitbake: bb/utils: fix contains_any() (2014-06-12 17:47:59 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib hao/master

for you to fetch changes up to 05ef8967ff189b16485e1a462c8de1ed74a08a32:

  mpc8315e-rdb: add the example about booting from jffs2 root (2014-06-14 09:24:26 +0800)

----------------------------------------------------------------
Kevin Hao (3):
      mpc8315e-rdb: bump to linux-yocto 3.14
      mpc8315e-rdb: add the jffs2 image support
      mpc8315e-rdb: add the example about booting from jffs2 root

 README.hardware                                          | 16 ++++++++++++++++
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf            |  5 ++++-
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend       |  3 +++
 3 files changed, 23 insertions(+), 1 deletion(-)

