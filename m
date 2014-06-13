Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C86B8E00BE2; Fri, 13 Jun 2014 06:26:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBB7DE00BDF
	for <poky@yoctoproject.org>; Fri, 13 Jun 2014 06:26:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s5DDQHBb026598
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 13 Jun 2014 06:26:17 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 13 Jun 2014 06:26:17 -0700
Message-ID: <539AFBE4.4050902@windriver.com>
Date: Fri, 13 Jun 2014 09:25:56 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Kevin Hao
	<kexin.hao@windriver.com>
References: <1402634363-31407-1-git-send-email-kexin.hao@windriver.com>
	<1402643046.12440.468.camel@ted>
In-Reply-To: <1402643046.12440.468.camel@ted>
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
X-List-Received-Date: Fri, 13 Jun 2014 13:26:23 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-13 03:04 AM, Richard Purdie wrote:
> On Fri, 2014-06-13 at 12:39 +0800, Kevin Hao wrote:
>> Hi,
>>
>> This tries to enable the jffs2 support for the mpc8315e-rdb board. I have
>> tested the jffs2 with the following steps and it worked perfectly.
>>
>> 1. root@mpc8315e-rdb:~# cat /proc/mtd
>> dev:    size   erasesize  name
>> mtd0: 00800000 00010000 "fe000000.flash"
>> mtd1: 00100000 00004000 "u-boot"
>> mtd2: 00300000 00004000 "kernel"
>> mtd3: 01c00000 00004000 "fs"
>>
>> 2. root@mpc8315e-rdb:~# flash_eraseall  /dev/mtd3
>> flash_eraseall has been replaced by `flash_erase <mtddev> 0 0`; please use it
>> Erasing 16 Kibyte @ 1bec000 -- 99 % complete flash_erase: Skipping bad block at 01bf0000
>> flash_erase: Skipping bad block at 01bf4000
>> flash_erase: Skipping bad block at 01bf8000
>> flash_erase: Skipping bad block at 01bfc000
>> Erasing 16 Kibyte @ 1bfc000 -- 100 % complete
>>
>> 3. root@mpc8315e-rdb:~# flashcp core-image-minimal-mpc8315e-rdb.jffs2 /dev/mtd3
>>
>> 4. Then boot with a jffs2 rootfs
>>
>> 5. root@mpc8315e-rdb:~# cat /proc/cmdline
>> root=/dev/mtdblock3 rootfstype=jffs2 console=ttyS0,115200
>> root@mpc8315e-rdb:~#
>> root@mpc8315e-rdb:~# mount
>> rootfs on / type rootfs (rw)
>> /dev/root on / type jffs2 (rw,relatime)
>> devtmpfs on /dev type devtmpfs (rw,relatime,size=59136k,nr_inodes=14784,mode=755)
>> proc on /proc type proc (rw,relatime)
>> sysfs on /sys type sysfs (rw,relatime)
>> debugfs on /sys/kernel/debug type debugfs (rw,relatime)
>> tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
>> tmpfs on /var/volatile type tmpfs (rw,relatime)
>> devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620)
>
> Can you please put this information into the README.hardware in
> meta-yocto-bsp so that others can find it, its useful to know how to use
> jffs2 on the default...

Agreed.

Bruce

>
> Cheers,
>
> Richard
>


