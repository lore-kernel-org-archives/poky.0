Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AD0FE00BE0; Fri, 13 Jun 2014 00:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDD92E00BB3
	for <poky@yoctoproject.org>; Fri, 13 Jun 2014 00:04:30 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s5D74FKC001221; Fri, 13 Jun 2014 08:04:15 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vNgtav_mrL0T; Fri, 13 Jun 2014 08:04:15 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s5D74B7H001217
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 13 Jun 2014 08:04:13 +0100
Message-ID: <1402643046.12440.468.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Hao <kexin.hao@windriver.com>
Date: Fri, 13 Jun 2014 08:04:06 +0100
In-Reply-To: <1402634363-31407-1-git-send-email-kexin.hao@windriver.com>
References: <1402634363-31407-1-git-send-email-kexin.hao@windriver.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] meta-yocto-bsp: enable the jffs2 for mpc8315e-rdb board
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
X-List-Received-Date: Fri, 13 Jun 2014 07:04:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-06-13 at 12:39 +0800, Kevin Hao wrote:
> Hi,
> 
> This tries to enable the jffs2 support for the mpc8315e-rdb board. I have
> tested the jffs2 with the following steps and it worked perfectly.
> 
> 1. root@mpc8315e-rdb:~# cat /proc/mtd
> dev:    size   erasesize  name
> mtd0: 00800000 00010000 "fe000000.flash"
> mtd1: 00100000 00004000 "u-boot"
> mtd2: 00300000 00004000 "kernel"
> mtd3: 01c00000 00004000 "fs"
> 
> 2. root@mpc8315e-rdb:~# flash_eraseall  /dev/mtd3
> flash_eraseall has been replaced by `flash_erase <mtddev> 0 0`; please use it
> Erasing 16 Kibyte @ 1bec000 -- 99 % complete flash_erase: Skipping bad block at 01bf0000
> flash_erase: Skipping bad block at 01bf4000
> flash_erase: Skipping bad block at 01bf8000
> flash_erase: Skipping bad block at 01bfc000
> Erasing 16 Kibyte @ 1bfc000 -- 100 % complete 
> 
> 3. root@mpc8315e-rdb:~# flashcp core-image-minimal-mpc8315e-rdb.jffs2 /dev/mtd3
> 
> 4. Then boot with a jffs2 rootfs
> 
> 5. root@mpc8315e-rdb:~# cat /proc/cmdline
> root=/dev/mtdblock3 rootfstype=jffs2 console=ttyS0,115200
> root@mpc8315e-rdb:~# 
> root@mpc8315e-rdb:~# mount
> rootfs on / type rootfs (rw)
> /dev/root on / type jffs2 (rw,relatime)
> devtmpfs on /dev type devtmpfs (rw,relatime,size=59136k,nr_inodes=14784,mode=755)
> proc on /proc type proc (rw,relatime)
> sysfs on /sys type sysfs (rw,relatime)
> debugfs on /sys/kernel/debug type debugfs (rw,relatime)
> tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
> tmpfs on /var/volatile type tmpfs (rw,relatime)
> devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620)

Can you please put this information into the README.hardware in
meta-yocto-bsp so that others can find it, its useful to know how to use
jffs2 on the default...

Cheers,

Richard


