Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFA41E00C75; Fri, 12 Feb 2016 06:36:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04C69E00C66
	for <poky@yoctoproject.org>; Fri, 12 Feb 2016 06:36:19 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1CEa9kV025692; Fri, 12 Feb 2016 14:36:09 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id qMQd5mF76JKU; Fri, 12 Feb 2016 14:36:09 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1CEa5Wf025688
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 12 Feb 2016 14:36:08 GMT
Message-ID: <1455287765.16142.321.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Fri, 12 Feb 2016 14:36:05 +0000
In-Reply-To: <2e6d2b75837731be983d888eaa82a9cfcf660e85.1455203562.git.bruce.ashfield@windriver.com>
References: <cover.1455203562.git.bruce.ashfield@windriver.com>
	<2e6d2b75837731be983d888eaa82a9cfcf660e85.1455203562.git.bruce.ashfield@windriver.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky: update qemu* to prefer 4.4 kernel
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
X-List-Received-Date: Fri, 12 Feb 2016 14:36:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2016-02-11 at 10:15 -0500, Bruce Ashfield wrote:
> 4.4 is out and has had enough mileage to be the default for the
> qemu machines. Tested with sato, minimal and kernel dev image
> types.

This mostly worked except for qemux86 which is showing X failing on all
builds. Its quite reproducible, "MACHINE=qemux86 bitbake core-image
-sato -c testimage" shows it.

https://autobuilder.yoctoproject.org/main/builders/nightly-x86/builds/6
48/steps/Running%20Sanity%20Tests/logs/stdio
is one example from the autobuilder.

Poking at the image manually, it appears Xorg fails due to:

[3587706.730] (EE) XKB: Could not invoke xkbcomp
[3587706.730] (EE) XKB: Couldn't compile keymap
[3587706.731] (EE) XKB: Failed to load keymap. Loading default keymap
instead.
[3587706.765] (EE) XKB: Could not invoke xkbcomp
[3587706.765] (EE) XKB: Couldn't compile keymap

which prompted me to look at dmesg:

EXT4-fs (vda): re-mounted. Opts: data=ordered
random: dd urandom read with 51 bits of entropy available
x86/PAT: Xorg:705 map pfn expected mapping type uncached-minus for [mem 0xfd000000-0xfdffffff], got write-combining
------------[ cut here ]------------
WARNING: CPU: 0 PID: 705 at /media/build1/poky/build/tmp/work-shared/qemux86/kernel-source/arch/x86/mm/pat.c:985 untrack_pfn+0xaf/0xc0()
Modules linked in: uvesafb
CPU: 0 PID: 705 Comm: Xorg Not tainted 4.4.1-yocto-standard #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.8.2-0-g33fbe13 by qemu-project.org 04/01/2014
 00000000 00000000 cf14dd78 c1397ab2 00000000 cf14dda8 c1051477 c1aa4f6c
 00000000 000002c1 c1a9fa4c 000003d9 c104b98f c104b98f cf244000 b6355000
 00000000 cf14ddb8 c1051552 00000009 00000000 cf14dde0 c104b98f cf14ddd0
Call Trace:
 [<c1397ab2>] dump_stack+0x4b/0x79
 [<c1051477>] warn_slowpath_common+0x87/0xc0
 [<c104b98f>] ? untrack_pfn+0xaf/0xc0
 [<c104b98f>] ? untrack_pfn+0xaf/0xc0
 [<c1051552>] warn_slowpath_null+0x22/0x30
 [<c104b98f>] untrack_pfn+0xaf/0xc0
 [<c104d54c>] ? kmap_atomic_prot+0x3c/0xf0
 [<c114e17f>] unmap_single_vma+0x4ef/0x500
 [<c114f007>] unmap_vmas+0x37/0x50
 [<c1154f8f>] exit_mmap+0x5f/0xf0
 [<c104eedd>] mmput+0x2d/0xb0
 [<c105009c>] copy_process+0xd2c/0x13c0
 [<c1050892>] _do_fork+0x82/0x340
 [<c105f2d1>] ? SyS_rt_sigaction+0x51/0xa0
 [<c1050c3c>] SyS_clone+0x2c/0x30
 [<c1001a03>] do_syscall_32_irqs_on+0x53/0xb0
 [<c189a94a>] entry_INT80_32+0x2a/0x2a
---[ end trace be3e0a61097feddc ]---
x86/PAT: Xorg:705 map pfn expected mapping type uncached-minus for [mem 0xfd000000-0xfdffffff], got write-combining
Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 state recovery directory
NFSD: starting 90-second grace period (net c1c271c0)

which fits since do_fork() is probably failing and would cause this
error. It looks like the above is only a warning but could be fatal
later I guess.

A quick look at upstream makes me wonder about:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=d9fe4fab11976e56b2e992980bf6ce948bdf02ac

which changes the code in this area.

Any idea what is going on here?

Cheers,

Richard

